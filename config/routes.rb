Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

  resources :alerts
  resources :searches
  resources :types

  get 'reservations/me' => 'reservations#me'

  post 'reservations/makeReservation' => 'reservations#makeReservation'

  resources :restaurants do
    resources :photos
    resources :addresses
    resources :reservations
    resources :schedules
    resources :dishes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
