require 'rails_helper'

RSpec.describe ForecastDailyParser do
  describe ".parse" do
    let(:params) {
      {
        dt: 1464433200,
        temp: {
          day: 11.21,
          min: 7.83,
          max: 11.21,
          night: 7.83,
          eve: 11.21,
          morn: 11.21
        },
        pressure: 1021.09,
        humidity: 63,
        weather: [{
          id: 800,
          main: "Clear",
          description: "clear sky",
          icon: "01n"
        }],
        speed: 4.57,
        deg: 32,
        clouds: 0
      }.with_indifferent_access
    }

    it "return a new Forecast Daily" do
      expect(ForecastDailyParser.parse(params).is_a?(ForecastDaily)).to be_truthy
    end
  end
end
