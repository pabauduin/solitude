class ProfilesController < ApplicationController
  def show
    @profile = User.find(current_user.id)
    @user_bookings = Booking.where(user_id: current_user.id)
    @escorts = []

    if current_user.user_type == "0"
      @user_bookings.each do |booking|
        @escorts << [Escort.where(id: booking.escort_id), booking]
      end
    else
      @escorts = Escort.where(user_id: current_user.id)
    end
  end
end
