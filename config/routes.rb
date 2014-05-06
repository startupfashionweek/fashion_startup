FashionStartup::Application.routes.draw do
  resources :sponsors

  resources :mailer_volunteers

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :subscribers
  resources :volunteers
  resources :startups
  resources :spotlights, only: [:update]
  resources :sponsor_spotlights, only: [:update]

  resources :interested_startups


  root 'welcome#index'
  get 'welcome/about'

  resources :welcome
end
