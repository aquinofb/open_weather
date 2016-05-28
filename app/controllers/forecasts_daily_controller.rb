class ForecastsDailyController < ApplicationController

  def show
    @forecast_daily = ForecastDailyService.by_city_and_id(params[:city], params[:id])
    raise ForecastNotFoundError unless @forecast_daily
    respond_with @forecast_daily
  end
end
