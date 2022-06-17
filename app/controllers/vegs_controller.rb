class VegsController < ApplicationController
  def index
    @vegs = Veg.all
  end

  def show
    @veg = Veg.find(params[:id])
  end

  def edit
    @veg = Veg.find(params[:id])
  end

  def update
    @veg = Veg.find(params[:id])
    veg_params = params.require(:veg).permit(:nom, :description,:prix)
    @veg.update(veg_params)
    redirect_to vegs_path
  end

  def new
    @veg = Veg.new
  end

  def create
    veg = Veg.create(veg_params)
    redirect_to veg_path(veg.id)
  end

  def destroy
    @veg = Veg.find(params[:id])
    @veg.destroy
    redirect_to vegs_path
  end

  private

  def set_veg
    # code here
  end

  private
  def veg_params
    params.require(:veg).permit(:nom, :description,:prix)
  end
end
