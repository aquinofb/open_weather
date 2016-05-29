class ForecastParser

  def self.parse data
    city = CityParser.parse(data['city'])
    forecasts_daily = data['list'].map { |item| ForecastDailyParser.parse(item.merge('city' => city.name)); }
    Forecast.new(code: data['cod'], message: data['message'], city: city, forecasts_daily: forecasts_daily)
  end
end
