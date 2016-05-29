require 'rails_helper'

RSpec.describe ForecastsController do

  describe "#index" do
    context "when has params filter" do
      context "when has forecast for the city" do
        before do
          allow(ForecastService).to receive(:by_city) { Forecast.new }
        end

        it "respond status :ok" do
          get(:index, filter: {city: "XYZ"}, format: :json)
          expect(response.status).to eq(200)
        end
      end

      context "when has no forecast for the city" do
        before do
          allow(ForecastService).to receive(:by_city) { nil }
        end

        it "respond 404" do
          get(:index, filter: {city: "XYZ"}, format: :json)
          expect(JSON.parse(response.body)['status']).to eq(404)
        end
      end
    end

    context "when has no params filter" do
      it "respond 404" do
        get(:index, filter: nil, format: :json)
        expect(JSON.parse(response.body)['status']).to eq(404)
      end
    end
  end
end
