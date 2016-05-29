class ForecastDaily < Base
  attr_accessor :id, :city, :date, :pressure, :humidity, :speed, :degrees, :clouds, :temperature, :weather

  delegate :icon, :description, to: :weather
  delegate :min, :max, to: :temperature
end
