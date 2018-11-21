class CampgroundsController < ApplicationController
  #before_action :authenticate_user!, only: [:index]
  before_action :set_campground, only: [:show, :edit, :update]
  before_action :set_campground_status, only: [:campground_status]

  def landing
  end
  def show
    @posts = Post.where(campground_id: @campground.id)
  end

  def create_post
    @post = @campground.posts.new(post_params)
    @post.user_id = current_user.id
    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def index
    @searching = params[:search].present? ? params[:search]: nil
    if @searching
      #searched = Campground.search(@searching)
      #searched = searched.select{|x| x.status == true } #filtro todos los que tienen estado available
      searched = Campground.where(name: @searching, status: true)
     else
      searched = Campground.where(status: true)
     end
     @campgrounds = searched.page(params[:page]).per(5)
  end

  def new
    @campground = Campground.new
  end

  def create
    campground = Campground.new(campground_params)
    campground.user_id = current_user.id
    campground.save!
    redirect_to root_path
  end

  def campground_status
    if @campground.status ==  true
      @campground.update(status: false)
    else
      @campground.update(status: true)
    end
    redirect_to my_campgrounds_user_path(current_user,@campground.id)
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
  def set_campground_status
    @campground = Campground.find(params[:campground_id])
  end
  def campground_params
    params.require(:campground).permit(:name, :direction, :region, :photo, :photo1, :photo2, :photo3, :photo4, :user_id)
  end
  def post_params
      params.require(:post).permit(:opinion)
  end
end
