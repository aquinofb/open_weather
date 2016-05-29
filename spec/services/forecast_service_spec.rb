require 'rails_helper'

RSpec.describe ForecastService do

  describe ".by_city" do
    context "when result OK" do
      before do
        allow(RestClient).to receive(:get) { "{\"result\": \"OK\" }" }
      end

      it "parse the result" do
        expect(ForecastParser).to receive(:parse) { anything }
        ForecastService.by_city("Fortaleza")
      end
    end

    context "when result has error" do
      before do
        allow(RestClient).to receive(:get) { "{\"cod\": \"404\" }" }
      end

      it "return nil" do
        expect(ForecastService.by_city("Fortaleza")).to be_nil
      end
    end
  end
end
