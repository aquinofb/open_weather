class ForecastDaily < Base
  attr_accessor :id, :date, :pressure, :humidity, :speed, :degrees, :clouds, :temperature, :weather

  delegate :icon, :description, to: :weather
  delegate :min, :max, to: :temperature
end
