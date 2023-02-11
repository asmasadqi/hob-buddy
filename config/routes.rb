Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions"
  }
  root to: "pages#home"
  get "/profile", to: "pages#user"

  resources :users, only: %i[index show]

  resources :matches, only: %i[create update]

  resources :chatrooms, only: %i[index show]

  resources :activities do
    resources :bookings, only: %i[new create]
  end

  resources :activity_chatrooms, only: %i[show]
end
