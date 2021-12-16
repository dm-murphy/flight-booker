class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @flight = flight_finder
    @number_passengers = passenger_params.to_i
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
end
