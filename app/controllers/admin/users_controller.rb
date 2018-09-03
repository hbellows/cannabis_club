class Admin::UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash.notice "#{@user.name} added!"
      redirect_to admin_users_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to admin_user_path(@user)
      flash.notice = "#{@user.name} updated!"
    else
      render :edit
    end
  end

  def destroy
    User.destroy(params[:id])

    redirect_to admin_users_path
  end
end
