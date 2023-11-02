class ApplicationController < ActionController::Base

    def home
    end

    helper_method :current_user
  
    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
  
    before_action :authenticate_user
  def authenticate_user
      unless current_user
        redirect_to login_path, alert: 'Veuillez vous connecter pour accéder à cette page.'
      end
  end
 
    def index
      # Code pour personnaliser la page d'accueil
    end
 rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def record_not_found
    render file: 'public/404.html', status: :not_found
  end
end
      