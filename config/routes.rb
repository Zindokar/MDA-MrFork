Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'
  resources :alerts

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  resources :searches
  resources :types

  get 'admin/control_panel' => 'admin#index'

  get 'admin/manage_users' => 'admin#manage_users'

  get 'admin/show_restaurants' => 'admin#show_restaurants_admin'

  get 'admin/manage_restaurants' => 'admin#manage_restaurants'

  get 'reservations/me' => 'reservations#me'

  post 'reservations/makeReservation' => 'reservations#makeReservation'

  resources :user do
  end

  resources :restaurants do
    resources :photos
    resources :addresses
    resources :reservations
    resources :schedules
    resources :dishes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
