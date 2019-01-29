class ReservationsController < ApplicationController
  before_action :set_campground, only: [:create, :new]

  def create
    @reservation = @campground.reservations.new(reservation_params)
    @reservation.user_id = current_user.id
    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @campground, notice: 'reservation was successfully created.' }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @reservation = Reservation.new
  end

  private
  def set_campground
    @campground = Campground.find(params[:campground_id])
  end
  def reservation_params
    params.require(:reservation).permit(:initialDay, :finalDay)
  end
end
