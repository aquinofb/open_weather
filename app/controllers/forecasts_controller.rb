class ForecastsController < ApplicationController

  def index
    @forecast = ForecastService.by_city(params[:filter][:city]) if params[:filter]
    raise ForecastNotFoundError unless @forecast
    respond_with @forecast
  end
end
