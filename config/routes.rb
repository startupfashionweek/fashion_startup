FashionStartup::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :subscribers
  resources :volunteers
  resources :startups

  resources :spotlights, only: [:update]

  resources :interested_startups


  root 'welcome#index'
  get 'welcome/about'

  resources :welcome
end
