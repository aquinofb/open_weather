require 'rails_helper'

RSpec.describe Temperature do

  describe "#average" do
    let(:temperature) { Temperature.new(evening: 11, morning: 9) }

    it "return the average between evening and morning" do
      expect(temperature.average).to eq(10)
    end
  end
end
