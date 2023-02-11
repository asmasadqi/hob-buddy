Rails.application.routes.draw do
  get 'chatrooms/index'
  get 'chatrooms/show'
  devise_for :users
  root to: "pages#home"
  get "/profile", to: "pages#user"

  get "/components", to: "pages#components"

  resources :users, only: %i[index show]

  resources :matches, only: %i[create update]
  
  resources :chatrooms, only: %i[index show]  
  
  resources :activities do
    resources :bookings, only: %i[new create]    
  end

  resources :activity_chatrooms, only: %i[show]
end
