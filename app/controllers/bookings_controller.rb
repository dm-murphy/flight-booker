class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @flight = flight_finder
    @number_passengers = passenger_params.to_i
    @number_passengers.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_details)
    @flight = flight_finder
    @number_passengers = passenger_params.to_i

    if @booking.save
      flash[:alert] = "Thank you! Your booking has been confirmed."
      redirect_to @booking
    else
      flash[:alert] = "Whoops, failed to save your booking."
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

    def booking_params
      params.require(:booking).permit(:passengers, :flight_id)
    end

    def flight_finder
      Flight.find(params[:booking][:flight_id])
    end

    def passenger_params
      params[:booking][:passengers]
    end

    def booking_details
      params.require(:booking).permit(:flight_id, passengers_attributes: [ :name, :email ])
    end
end
