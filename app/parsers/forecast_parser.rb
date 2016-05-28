class ForecastParser

  def self.parse data
    city = CityParser.parse(data['city'])
    forecasts_daily = data['list'].map { |forecast_daily| ForecastDailyParser.parse(forecast_daily) }
    Forecast.new(code: data['code'], message: data['message'], city: city, forecasts_daily: forecasts_daily)
  end
end
