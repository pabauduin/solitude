class BookingsController < ApplicationController
  def create
    @escort = Escort.find(params[:escort_id])
    @booking = Booking.new(booking_date: Date.today, day_use_date: @escort.available_dates)
    authorize @booking
    @booking.user = current_user
    @booking.escort = @escort
    @booking.save
    redirect_to profile_path(current_user.id)
  end

  def destroy
    @booking = Booking.find(params[:escort_id])
    authorize @booking
    @booking.destroy
    redirect_to profile_path(current_user.id)
  end
end
