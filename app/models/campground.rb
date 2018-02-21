class Campground < ApplicationRecord
  def self.search(search)
    if search
      Campground.where("name LIKE ?","%#{search}%")
    else
      Campground.all
    end
  end
end
