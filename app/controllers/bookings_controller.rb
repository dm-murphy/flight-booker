class BookingsController < ApplicationController
  def index
    @bookings = Book.all
  end

  def new
    @booking = Booking.new(booking_params)
  end

  # def create
  #   @booking = Booking.new(booking_params)

  #   if @booking.save
  #     redirect_to root_path
  #   else
  #     render :new
  #   end
  # end

  private

    def booking_params
      params.require(:booking).permit(:passengers, :flight_id)
    end
end
