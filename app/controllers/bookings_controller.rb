class BookingsController < ApplicationController
  def index
    @bookings = Book.all
  end
end
