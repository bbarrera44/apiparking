Rails.application.routes.draw do
  resources :parkings
  resources :rates
  resources :entries
  resources :vehicles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
