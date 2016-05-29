require 'rails_helper'

RSpec.describe TemperatureParser do
  describe ".parse" do
    let(:params) {
      {
        day: 11.21,
        min: 7.83,
        max: 11.21,
        night: 7.83,
        eve: 11.21,
        morn: 11.21
      }.with_indifferent_access
    }

    it "return a new Temperature" do
      expect(TemperatureParser.parse(params).is_a?(Temperature)).to be_truthy
    end
  end
end
