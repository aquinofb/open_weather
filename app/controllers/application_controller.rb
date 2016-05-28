class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, unless: :json_request?

  protected
    def json_request?
      request.format.json?
    end

    def respond_with model
      respond_to do |format|
        format.html
        format.json {render json: model}
      end
    end
end
