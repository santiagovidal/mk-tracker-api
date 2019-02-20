Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  namespace :api do
    namespace :v1, defaults: { format: :json } do
      get :status, to: 'api#status'
      resources :users, only: [:index] do
        get :summary, on: :collection
      end
      resources :tracks, only: [:index] do
        get :stats, on: :collection
      end
      resources :championships, only: [:create]
    end
  end
end
