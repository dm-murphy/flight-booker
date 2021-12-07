class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @searched_flights = Flight.find(search_params)
  end

  def search_params
    params.require(:flight).permit(:departing_airport_id, :arriving_airport_id, :passengers, :takeoff)
  end
end
