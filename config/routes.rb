Rails.application.routes.draw do
  resources :airports, only: [:index, :show]
  root to: 'airports#index'

  # resources :regions
  # resources :countries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
