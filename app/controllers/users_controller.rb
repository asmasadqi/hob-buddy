class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  # To do:
  # Authentifier si le user est connecté DONE
  # afficher la list des personnes sur l'appli
  # oder by 1-location+user preference / 2-location / 3- all the rest

  def index
    @users = User.all
  end

end
