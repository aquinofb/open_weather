class Temperature < Base
  attr_accessor :day, :night, :min, :max, :evening, :morning

  def average
    (self.morning + self.evening)/2
  end
end
