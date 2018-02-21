class CampingsController < ApplicationController
  #before_action :authenticate_user!, only: [:index]
  def landing
  end
  def index
    @campgrounds = Campground.search(params[:search])
  end
end
