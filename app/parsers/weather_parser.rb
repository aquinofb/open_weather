class WeatherParser

  def self.parse params
    Weather.new(id: params['id'], main: params['main'], description: params['description'], icon: params['icon'])
  end
end
