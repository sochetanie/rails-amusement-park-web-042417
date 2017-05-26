class RidesController < ApplicationController

  def new
  end

  def create
    @ride = Ride.new(user_id: current_user.id, attraction_id: params[:attraction])
    flash[:success] = @ride.take_ride
    
    if @ride.take_ride == "Thank you for riding this ride!"
      @ride.save
    end
    current_user.rides << @ride
    redirect_to user_path(current_user)
  end

end
