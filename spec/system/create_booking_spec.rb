require 'rails_helper'

RSpec.describe 'Open new booking form after flight search submission', type: :system do
  scenario 'valid search inputs' do
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

  scenario 'valid search and booking inputs' do
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
    fill_in 'Full name:', with: 'Uncle Bob'
    fill_in 'Email:', with: 'cleancoderocks@fakemail.com'
    click_on 'Create Booking'
    expect(page).to have_content('SUCCESS')
  end

  scenario 'invalid search inputs from matching airport ids' do
    Rails.application.load_seed
    visit flights_path
    select "SFO", :from => "flight[departing_airport_id]"
    select "SFO", :from => "flight[arriving_airport_id]"
    select "1", :from => "flight[passengers]"
    date = Time.zone.now + 1.days
    formatted_date = date.strftime("%a %m/%d/%Y")
    select formatted_date, :from => "flight[takeoff_date]"
    click_on 'Search'
    expect(page).not_to have_content('Submit')
  end

  scenario 'invalid search inputs from blank form fields' do
    Rails.application.load_seed
    visit flights_path
    click_on 'Search'
    expect(page).not_to have_content('Submit')
  end

  scenario 'valid search inputs but invalid booking inputs' do
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
    # fill_in 'Full name:', with: 'Uncle Bob'
    # fill_in 'Email:', with: 'cleancoderocks@fakemail.com'
    click_on 'Create Booking'
    expect(page).not_to have_content('SUCCESS')
  end
end