class CampingsController < ApplicationController
  #before_action :authenticate_user!, only: [:index]
  def landing
  end
  def index
    @searching = params[:search]
    @campgrounds = Campground.search(@searching)
  end
end
