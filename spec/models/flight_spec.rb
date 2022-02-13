require 'rails_helper'

RSpec.describe Flight, type: :model do
  let!(:flight) do
    FactoryBot.create(:flight)
  end

  context "takeoff date contains full timestamp" do
    it "strips down to formatted date" do
      expect(flight.takeoff_date_formatted).to eq("Sun 02/13/2022")
    end
  end

  context "takeoff date contains full timestamp" do
    it "strips down to formatted time" do
      expect(flight.takeoff_time_formatted).to eq("11:02 AM")
    end
  end
end
