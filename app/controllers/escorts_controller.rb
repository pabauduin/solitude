class EscortsController < ApplicationController
  def index
    @escorts = Escort.all
  end

  def show
    @escort = Escort.find(params[:id])
  end

  def new
    @escort = Escort.new
  end

  def create
    @escort = Escort.new(params[:escort_params])
    if @escort.save
      redirect_to @escort
    else
      render new
    end
  end

  def edit
    @escort = Escort.find(params[:id])
  end

  def update
    @escort = Escort.find(params[:id])
  end

  def delete
    @escort = Escort.find(params[:id])
    @escort.destroy
  end

  def escort_params
    params.require(:escort).permit(:name, :age, :size, :type, :city, :hair_color)
  end
end
