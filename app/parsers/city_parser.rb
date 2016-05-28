class CityParser

  def self.parse data
    coord = Coordinate.new(data['coord']['lat'], data['coord']['lon'])
    City.new(id: data['id'], name: data['name'], coord: coord, country: data['country'])
  end
end
