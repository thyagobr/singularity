class SessionsController < ApplicationController
  skip_before_action :authenticate_user, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      redirect_to login_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url
  end
end
