require 'rails_helper'

RSpec.describe CityParser do
  describe ".parse" do
    let(:params) {
      {
        id: 2643743,
        name: "London",
        coord: {
          lon: -0.12574,
          lat: 51.50853
        },
        country: "GB",
        population: 0
      }.with_indifferent_access
    }

    it "return a new City" do
      expect(CityParser.parse(params).is_a?(City)).to be_truthy
    end
  end
end
