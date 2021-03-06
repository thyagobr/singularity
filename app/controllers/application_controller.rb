class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user

  private

  def current_user
    @user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def authenticate_user
    redirect_to login_url unless current_user
  end
end
