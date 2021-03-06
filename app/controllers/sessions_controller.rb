class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(user_name: params[:user][:user_name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash[:notice] = "Logged in as #{@user.user_name}"
      redirect_to user_path(@user)
    elsif
      @user
      flash[:notice] = "Incorrect Password for #{@user.user_name}"
      redirect_to login_path
    elsif
      flash[:notice] = "Username #{params[:user][:user_name]} Not Registered"
      redirect_to login_path
    else
      @user.admin?
      session[:user_id] = @user.id
      redirect_to admin_dashboard_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
