class Admin::StrainsController < Admin::BaseController

  def index
    @strains = Strain.all
  end

  def show
    @strain = Strain.find(params[:id])
  end

  def new
    @strain = Strain.new
  end

  def create
    @strain = Strain.create(strain_params)
    if @strain.save
      flash[:notice] = "#{@strain.strain} added!"
      redirect_to admin_strains_path
    else
      render :new
    end
  end

  def edit
    @strain = Strain.find(params[:id])
  end

  def update
    @strain = Strain.find(params[:id])
    if @strain.update(strain_params)
      redirect_to admin_strain_path(@strain)
      flash.notice = "#{@strain.strain} updated!"
    else
      render :edit
    end
  end

  def destroy
    Strain.destroy(params[:id])

    redirect_to admin_strains_path
  end


  private

    def strain_params
      params.require(:strain).permit(:strain, :cannabinoid_abbreviation,
        :cannabinoid, :terpene, :medical_use, :health_benefit,
        :category, :strain_type)
    end
end
