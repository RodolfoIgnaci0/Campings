class CampgroundsController < ApplicationController
  #before_action :authenticate_user!, only: [:index]
  before_action :set_campground, only: [:show]

  def landing
  end
  def index
    @searching = params[:search]
    searched = Campground.search(@searching)
    @campgrounds = searched.page(params[:page]).per(5)
  end
  def show

  end

  private
  def set_campground
    @campground = Campground.find(params[:id])
  end
end
