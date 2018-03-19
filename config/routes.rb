Rails.application.routes.draw do
  resources :searches
  resources :addresses
  resources :galleries
  resources :schedules
  resources :reserves
  resources :dishes
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
