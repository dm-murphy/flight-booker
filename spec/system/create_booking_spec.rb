require 'rails_helper'

RSpec.describe 'Open new booking form after flight search submission', type: :system do
  scenario 'valid inputs' do
    Rails.application.load_seed
    visit flights_path
    select "SFO", :from => "flight[departing_airport_id]"
    select "JFK", :from => "flight[arriving_airport_id]"
    select "1", :from => "flight[passengers]"
    date = Time.zone.now + 1.days
    formatted_date = date.strftime("%a %m/%d/%Y")
    select formatted_date, :from => "flight[takeoff_date]"
    click_on 'Search'
    choose(name: 'booking[flight_id]', match: :first)
    click_on 'Submit'
    expect(page).to have_content('New Booking Form')
  end
end