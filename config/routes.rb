Rails.application.routes.draw do
  get 'activity_chatrooms/show'
  devise_for :users, controllers: {
    sessions: "users/sessions"
  }
  root to: "pages#home"
  get "/profile", to: "pages#user"

  get "/components", to: "pages#components"

  resources :users, only: %i[index show]

  resources :matches, only: %i[create update]
  post '/matches/swipe', to: 'matches#swipe', as: 'swipe_match'

  resources :chatrooms, only: %i[index show] do
    resources :messages, only: :create
  end

  resources :activities do
    resources :bookings, only: %i[new create]
  end

  resources :activity_chatrooms, only: %i[show] do
    resources :activity_messages, only: :create
  end

  resources :preferences, only: :index
end
