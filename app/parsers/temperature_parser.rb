class TemperatureParser

  def self.parse data
    Temperature.new(day: data['day'], night: data['night'], min: data['min'],
      max: data['max'], evening: data['eve'], morning: data['morn'])
  end
end
