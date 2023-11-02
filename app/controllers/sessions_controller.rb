class SessionsController < ApplicationController
  # Définir le filtre d'authentification, mais exclure l'action 'new'
  before_action :authenticate_user, except: [:new]

  # ...

  def new
    @user = User.new
    render 'new'
  end

  # ...
end
