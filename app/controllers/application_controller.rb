class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, unless: :json_request?

  class ForecastNotFoundError < StandardError; end

  rescue_from ForecastNotFoundError do
    respond_to do |format|
      format.html { render "/errors/404" }
      format.json { render json: { status: 404, message: "Forecast not found" } }
    end
  end

  protected
    def json_request?
      request.format.json?
    end

    def respond_with model
      respond_to do |format|
        format.html
        format.json
      end
    end
end
