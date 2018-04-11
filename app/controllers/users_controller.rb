class UsersController < ApplicationController
  def my_campgrounds
    @mycampgrounds = Campground.where(user_id: current_user)
  end
end
