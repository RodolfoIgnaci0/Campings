class Campground < ApplicationRecord
  has_many :posts
  belongs_to :user
  paginates_per 50
  searchkick word_middle: [:name, :region]
  # def self.search(params)
  #   Campground.search(load:true) do
  #     query { string params[:query] if params[:query].present?}
  #     filter status: 1
  #   end
  # end
end
