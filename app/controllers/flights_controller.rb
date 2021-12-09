class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    if params[:flight]
      @searched_flights = Flight.where(flight_params)
      @number_passengers = passenger_params
    end
  end

  private

  def flight_params
    params.require(:flight).permit(:departing_airport_id, :arriving_airport_id, :takeoff_date)
  end

  def passenger_params
    params[:flight][:passengers]
  end
end
