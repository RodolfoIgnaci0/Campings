class Campground < ApplicationRecord
  has_many :posts
  searchkick word_middle: [:name, :region]
  # def self.search(search)
  #   if search
  #     Campground.where("name LIKE ?","%#{search}%")
  #   else
  #     Campground.all
  #   end
  # end
  paginates_per 50
end
