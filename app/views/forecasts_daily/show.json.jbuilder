json.id @forecast_daily.id
json.city @forecast_daily.city
json.date @forecast_daily.date
json.min @forecast_daily.min
json.max @forecast_daily.max
json.icon @forecast_daily.icon
json.description @forecast_daily.description
json.pressure @forecast_daily.pressure
json.humidity @forecast_daily.humidity
json.speed @forecast_daily.speed
json.degrees @forecast_daily.degrees
json.clouds @forecast_daily.clouds

json.temperature do
  json.average @forecast_daily.temperature.average
  json.evening @forecast_daily.temperature.evening
end
