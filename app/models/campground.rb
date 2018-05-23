class Campground < ApplicationRecord
  has_many :posts
  has_many :reservations
  belongs_to :user
  paginates_per 50
  searchkick word_middle: [:name, :region]


  mount_uploader :photo, PhotoUploader
  mount_uploader :photo1, Photo1Uploader
  mount_uploader :photo2, Photo2Uploader
  mount_uploader :photo3, Photo3Uploader
  mount_uploader :photo4, Photo4Uploader
  # def self.search(params)
  #   Campground.search(load:true) do
  #     query { string params[:query] if params[:query].present?}
  #     filter status: 1
  #   end
  # end
end
