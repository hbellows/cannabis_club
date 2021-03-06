class Admin::BaseController < ApplicationController
  before_action :require_admin

  def require_admin
    render file: '/public/404' unless current_admin?
  end

  def dashboard
    @users = User.all
    @strains = Strain.all
  end
end
