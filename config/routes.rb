Rails.application.routes.draw do
  root "operating_systems#index"

  resources :operating_systems, only: [:index, :create]
  resources :phones, only: [:index, :new, :create]
end
