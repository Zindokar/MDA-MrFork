Rails.application.routes.draw do
  resources :alerts
  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

  resources :searches
  resources :types
  get 'reservations/me' => 'reservations#me'
  resources :restaurants do
    resources :photos
    resources :addresses
    resources :reservations
    resources :schedules
    resources :dishes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
