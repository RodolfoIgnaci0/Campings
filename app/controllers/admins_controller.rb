class AdminsController < ApplicationController
  def index
    @mycampgrounds = current_user.campgrounds
  end
end
