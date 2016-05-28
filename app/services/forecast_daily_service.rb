class ForecastDailyService

  def self.by_city_and_id city_name, id
    forecasts_daily = ForecastService.by_city(city_name).forecasts_daily
    forecasts_daily.detect { |forecast_daily| forecast_daily.id.eql?(id.to_i) }
  end
end
