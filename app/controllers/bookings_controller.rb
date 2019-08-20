class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def delete
    @booking = Booking.find(params[:id])
    @booking.destroy
  end
end
