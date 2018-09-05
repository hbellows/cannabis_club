class StrainsController < ApplicationController
  # before_action :require_user

  def index
    @strains = Strain.all
  end

  def show
    @strain = Strain.find(params[:id])
  end

end
