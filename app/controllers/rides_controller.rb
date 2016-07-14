class RidesController < ApplicationController

  def create
    @user = current_user
    @ride = Ride.create(ride_params)
    alert = @ride.take_ride
    redirect_to user_path(current_user), :alert => alert
  end

  private

  def ride_params
    params.permit(:attraction_id, :user_id)
  end

end