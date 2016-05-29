require 'rails_helper'

RSpec.describe ForecastsDailyController do
  describe "#show" do
    context "when has forecast_daily" do
      let(:forecast_daily) { ForecastDaily.new(id: 1) }

      before do
        allow(ForecastDailyService).to receive(:by_city_and_id).with("Fortaleza", "1") { forecast_daily }
      end

      it "respond status :ok" do
        get(:show, city: "Fortaleza", id: 1, format: :json)
        expect(response.status).to eq(200)
      end
    end

    context "when has no forecast_daily" do
      before do
        allow(ForecastDailyService).to receive(:by_city_and_id).with(anything, "1") { nil }
      end

      it "respond 404" do
        get(:show, city: anything, id: 1, format: :json)
        expect(JSON.parse(response.body)['status']).to eq(404)
      end
    end
  end
end
