class EscortsController < ApplicationController
  def index
    if params[:escort].nil?
      @escort = Escort.new(city: params[:search][:city].capitalize,
                           gender: params[:search][:gender],
                           age: params[:search][:age],
                           size: params[:search][:size])
      @escorts = Escort.where(city: params[:search][:city].capitalize,
                              gender: params[:search][:gender].capitalize)
    else
      @escort = Escort.new(city: params[:escort][:city].capitalize,
                           gender: params[:escort][:gender],
                           age: params[:escort][:age],
                           size: params[:escort][:size],
                           origin: params[:escort][:origin],
                           available_dates: params[:escort][:available_dates])
      @escorts = Escort.where(city: params[:escort][:city].capitalize,
                              gender: params[:escort][:gender].capitalize,
                              age: params[:escort][:age],
                              origin: params[:escort][:origin],
                              size: params[:escort][:size],
                              available_dates: params[:escort][:available_dates])
    end
  end

  def show
    @escort = Escort.find(params[:id])
    # @escort = Escort.geocoded
    @markers = []
    @markers << {
        lat: @escort.latitude,
        lng: @escort.longitude
      }
    authorize @escort
  end

  def new
    @escort = Escort.new
    authorize @escort
  end

  def create
    @escort = Escort.new(escort_params)
    authorize @escort
    @escort.user = current_user
    if @escort.save
      redirect_to @escort
    else
      render :new
    end
  end

  def edit
    @escort = Escort.find(params[:id])
    authorize @escort
  end

  def update
    @escort = Escort.find(params[:id])
    authorize @escort
    redirect_to @escort
  end

  def delete
    @escort = Escort.find(params[:id])
    authorize @escort
    @escort.destroy
    redirect_to @escort
  end

  def escort_params
    params.require(:escort).permit(:name, :gender, :age, :size, :origin, :city, :hair_color, :price_per_day, :photo)
  end
end
