class Reservation < ApplicationRecord
  belongs_to :campground
  belongs_to :user
end
