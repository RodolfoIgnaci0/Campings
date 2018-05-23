class PostsController < ApplicationController
  before_action :find_user, only: [:create]
  before_action :find_campground, only: [:create]
  def create
    redirect_to root_path
  end
  def index
    @posts = Post.all
  end
  def new
    @post = Post.new
  end

  private
  def find_campground
    @campground = Campground.find(params[:campground_id])
  end
  def find_user
    @user = User.find(current_user.id)
  end
end
