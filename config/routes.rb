Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions"
  }
  root to: "pages#home"
  get "/profile", to: "pages#user"

  get "/components", to: "pages#components"

  resources :users, only: %i[index show]

  resources :matches, only: %i[create update]
  post '/create_denied_match', to: 'matches#create_denied_match', as: 'create_denied_match'

  resources :chatrooms, only: %i[index show]

  resources :activities do
    resources :bookings, only: %i[new create]
  end

  resources :activity_chatrooms, only: %i[show]
end
