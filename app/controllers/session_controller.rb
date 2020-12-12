class SessionController < ApplicationController
  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.user_id
      redirect_to mypage_path
    else
      render 'home/index'
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
