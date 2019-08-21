class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def delete
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
  end
end
