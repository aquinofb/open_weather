class Base

  def initialize opts={}
    opts.each do |attr, value|
      self.send("#{attr}=", value)
    end
  end
end
