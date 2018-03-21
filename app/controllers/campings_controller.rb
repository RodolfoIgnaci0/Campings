class CampingsController < ApplicationController
  #before_action :authenticate_user!, only: [:index]
  def landing
  end
  def index
    @searching = params[:search]
    searched = Campground.search(@searching)
    @campgrounds = searched.page(params[:page]).per(5)
  end
end
