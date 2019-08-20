class EscortsController < ApplicationController
  def index
    @escorts = Escort.where(city: params[:search][:city].capitalize,
                            genre: params[:search][:genre].capitalize
                            )
  end

  def show
    @escort = Escort.find(params[:id])
  end

  def new
    @escort = Escort.new
  end

  def create
    @escort = Escort.new(escort_params)
    if @escort.save
      redirect_to @escort
    else
      render :new
    end
  end

  def edit
    @escort = Escort.find(params[:id])
  end

  def update
    @escort = Escort.find(params[:id])
    redirect_to @escort
  end

  def delete
    @escort = Escort.find(params[:id])
    @escort.destroy
    redirect_to @escort
  end

  def escort_params
    params.require(:escort).permit(:name, :age, :size, :origin, :city, :hair_color, :price_per_day)
  end
end
