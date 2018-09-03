class DispensariesController < ApplicationController
  before_action :set_dispensary, only: [:show, :edit, :update, :destroy]

  def index
    @dispensaries = Dispensary.all
  end

  def show
  end

  private

    def set_dispensary
      @dispensary = Dispensary.find(params[:id])
    end

    def dispensary_params
      params.require(:dispensary).permit(:name, :full_address, :email, :phone_number)
    end
end
