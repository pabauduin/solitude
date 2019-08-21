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

   @escorts = Escort.geocoded #returns flats with coordinates

    @markers = @escorts.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { flat: flat }),
        image_url: helpers.asset_url('dollars.png')
      }
    end
  end
end

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

