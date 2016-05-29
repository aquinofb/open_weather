require 'rails_helper'

RSpec.describe ForecastDailyService do

  describe ".by_city_and_id" do
    let(:forecast_daily_1) { ForecastDaily.new(id: 1) }
    let(:forecast_daily_2) { ForecastDaily.new(id: 2) }
    let(:forecast) { Forecast.new(forecasts_daily: [forecast_daily_1, forecast_daily_2]) }

    before do
      allow(ForecastService).to receive(:by_city) { forecast }
    end

    it "return a forecast_daily from the forecast with id" do
      expect(ForecastDailyService.by_city_and_id("Fortaleza", 2)).to eq(forecast_daily_2)
    end

    it "find forecast by city" do
      expect(ForecastService).to receive(:by_city).with("Fortaleza") { forecast }
      ForecastDailyService.by_city_and_id("Fortaleza", 1)
    end
  end
end
