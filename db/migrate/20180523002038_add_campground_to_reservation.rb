class AddCampgroundToReservation < ActiveRecord::Migration[5.1]
  def change
    add_reference :reservations, :campground, foreign_key: true
  end
end
