Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  namespace :api do
    namespace :v1, defaults: { format: :json } do
      get :status, to: 'api#status'
      resources :tracks, only: [:index]
      resources :championships, only: [:create]
    end
  end
end
