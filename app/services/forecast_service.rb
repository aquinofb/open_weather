class ForecastService
  class CityNotFoundError < StandardError; end

  @@query = {
    units: "metric",
    cnt: 16,
    apikey: ENV['OPENWEATHER_KEY']
  }

  def self.by_city city_name
    result = JSON.parse(RestClient.get("http://api.openweathermap.org/data/2.5/forecast/daily", params: @@query.merge(q: city_name)))
    ForecastParser.parse(result) unless not_found?(result)
  end

  def self.not_found? result
    result['cod'].eql?("404")
  end
end
