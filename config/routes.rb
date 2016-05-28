Rails.application.routes.draw do
  resources :forecasts, only: [:index]
  resources :forecasts_daily, only: [:show]
end
