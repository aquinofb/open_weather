json.city do
  json.id @forecast.city.id
  json.name @forecast.city.name
  json.country @forecast.city.country
end

json.forecasts_daily @forecast.forecasts_daily do |forecast_daily|
  json.id forecast_daily.id
  json.date forecast_daily.date
  json.min forecast_daily.min
  json.max forecast_daily.max
  json.icon forecast_daily.icon
  json.description forecast_daily.description
end
