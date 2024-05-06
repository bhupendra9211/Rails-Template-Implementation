Rails.application.routes.draw do
  match '/422', to: 'errors#unprocessable_entity', via: :all
  match '/500', to: 'errors#internal_server_error', via: :all
  match '/404', to: 'errors#not_found', via: :all
  get 'errors/not_found'
  get 'errors/internal_server_error'
  get 'errors/unprocessable_entity'
  get 'home/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
