class CampgroundsController < ApplicationController
  #before_action :authenticate_user!, only: [:index]
  before_action :set_campground, only: [:show]

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

  private
  def set_campground
    @campground = Campground.find(params[:id])
  end
  def campground_params
    params.require(:campground).permit(:name, :direction, :region, :photo, :photo1, :photo2, :photo3, :photo4)
  end
end
