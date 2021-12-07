class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @searched_flights = Flight.where(search_params)
  end

  def search_params
    params.permit(:departing_airport_id, :arriving_airport_id, :passengers, :takeoff)
  end
end
