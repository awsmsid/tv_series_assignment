Rails.application.routes.draw do
  root "tv_series#index"
  resources :tv_series, only: [:index]
end
