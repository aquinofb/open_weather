require 'rails_helper'

RSpec.describe WeatherParser do
  describe ".parse" do
    let(:params) {
      {
        id: 800,
        main: "Clear",
        description: "clear sky",
        icon: "01n"
      }.with_indifferent_access
    }

    it "return a new Weather" do
      expect(WeatherParser.parse(params).is_a?(Weather)).to be_truthy
    end
  end
end
