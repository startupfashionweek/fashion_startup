FashionStartup::Application.routes.draw do
  resources :sponsors

  resources :mailer_volunteers

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :subscribers
  resources :volunteers
  resources :startups, only: [:show]
  # resources :spotlights, only: [:update]
  # resources :sponsor_spotlights, only: [:update]
  resources :teams, only: [:index]
  resources :interested_startups, only: [:create, :new]
  resources :all_sponsors, only: [:index]
  resources :events, only: [:index]
  resources :event_spotlights
  resources :features, only: [:update]


  root 'welcome#index'
  get 'welcome/about'
  get 'welcome/media'
  get 'welcome/contact'
  get 'welcome/team'
  get 'welcome/subscribe'

  resources :welcome
end
