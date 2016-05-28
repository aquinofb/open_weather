class ForecastDailyParser

  def self.parse params
    weathers = params['weather'].map{ |weather| WeatherParser.parse(weather) }

    ForecastDaily.new(id: params['dt'], date: Time.at(params['dt'].to_i),
      pressure: params['pressure'], humidity: params['humidity'],
      speed: params['speed'], degrees: params['deg'], clouds: params['clouds'],
      temperature: TemperatureParser.parse(params['temp']),
      weather: weathers.first)
  end
end
