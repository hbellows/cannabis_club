class UsersController < ApplicationController
  before_action :require_user

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash.notice = 'User was successfully updated.'
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private
    def user_params
      params.require(:user).permit(:full_address)
    end
end
