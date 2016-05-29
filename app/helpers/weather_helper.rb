module WeatherHelper

  def icon_weather_for icon
    map = {
      '01d': 'wi-day-sunny',
      '02d': 'wi-day-cloudy',
      '03d': 'wi-cloud',
      '04d': 'wi-cloudy',
      '09d': 'wi-rain',
      '10d': 'wi-day-rain',
      '11d': 'wi-lightning',
      '13d': 'wi-snowflake-cold',
      '50d': 'wi-fog',
      '01n': 'wi-day-sunny',
      '02n': 'wi-day-cloudy',
      '03n': 'wi-cloud',
      '04n': 'wi-cloudy',
      '09n': 'wi-rain',
      '10n': 'wi-day-rain',
      '11n': 'wi-lightning',
      '13n': 'wi-snowflake-cold',
      '50n': 'wi-fog'
    }

    "<i class=\"wi #{map[icon.to_sym]}\"></i>".html_safe
  end
end
