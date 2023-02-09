Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users do
    resources :activities, only: [:index]
    resources :bookings, only: [:index]
  end

  resources :activities do
    resources :bookings, only: %i[new create]
  end
  
end
