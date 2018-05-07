Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'
  resources :alerts
  #devise_for :users, controllers: {
   #   sessions: 'users/sessions'
  #}
  root to: redirect('/login')
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
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
