class CampgroundsController < ApplicationController
  #before_action :authenticate_user!, only: [:index]
  before_action :set_campground, only: [:show, :edit, :update]

  def landing
  end
  def index
    @searching = params[:search].present? ? params[:search]: nil
    @campgrounds = if @searching
      searched = Campground.search(@searching)
    else
      searched = Campground.all
      searched.page(params[:page]).per(5)
    end
  end
  def new
    @campground = Campground.new
  end
  def create
    Campground.create!(campground_params)
    redirect_to root_path
  end
  def show
  end
  def edit
  end
  def update
  respond_to do |format|
    if @campground.update(campground_params)
      format.html { redirect_to my_campgrounds_user_path(current_user), notice: 'Campground was successfully updated.' }
    else
      format.html { render :edit }
    end
  end
end

  private
  def set_campground
    @campground = Campground.find(params[:id])
  end
  def campground_params
    params.require(:campground).permit(:name, :direction, :region, :photo, :photo1, :photo2, :photo3, :photo4)
  end
end
