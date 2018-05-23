class ReservationsController < ApplicationController
  before_action :reservation_params,:set_campground, only: [:create]
  def create
    reservation = Reservation.new(reservation_params)
    reservation.campground_id = @campground.id
    reservation.save!
    redirect_to root, notice: 'Reservation was successfully created.'
  end
  def new
    @reservation = Reservation.new
  end
  private
  def reservation_params
    params.require(:reservation).permit(:initialDay,:finalDay)
  end
  def set_campground
    @campground = Campground.find(params[:campground_id])
  end
end
