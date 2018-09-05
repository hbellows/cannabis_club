class DispensariesController < ApplicationController

  def index
    @dispensaries = Dispensary.all
  end

  def show
    @dispensary = Dispensary.find(params[:id])
  end

end
