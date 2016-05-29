require 'rails_helper'

RSpec.describe WeatherHelper do

  describe "#icon_weather_for" do
    it "return a tag <i> with mapped icon" do
      expect(helper.icon_weather_for('01d')).to eq("<i class=\"wi wi-day-sunny\"></i>")
    end
  end
end
