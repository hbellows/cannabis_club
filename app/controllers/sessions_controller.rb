class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(user_name: params[:user][:user_name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash.now[:notice] = "Logged in as #{@user.user_name}"
      redirect_to user_path(@user)
    elsif
      @user
      flash.now[:danger] = "Incorrect Password for #{@user.user_name}"
      redirect_to login_path
    elseif
      flash.now[:danger] = "Username #{params[:user][:user_name]} Not Registered"
      redirect_to login_path
    else
      if @user.admin?
        session[:user_id] = @user.id
        redirect_to admin_dashboard_path
      end
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
