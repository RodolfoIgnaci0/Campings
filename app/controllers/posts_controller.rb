class PostsController < ApplicationController
  before_action :find_user, only: [:create]
  before_action :find_campground, only: [:create,:new,:show]
  before_action :authenticate_user!

  def create
    @post = @campground.posts.new(post_params)
    @post.user_id = current_user.id
  respond_to do |format|
   if @post.save
     format.html { redirect_to @campground, notice: 'Comment was successfully created.' }
     format.json { render :show, status: :created, location: @post }
   else
     format.html { render :new }
     format.json { render json: @post.errors, status: :unprocessable_entity }
   end
  end

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
  def post_params
    params.require(:post).permit(:opinion)
  end
end
