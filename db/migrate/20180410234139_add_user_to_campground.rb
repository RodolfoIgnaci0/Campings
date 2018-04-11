class AddUserToCampground < ActiveRecord::Migration[5.1]
  def change
    add_reference :campgrounds, :user, foreign_key: true
  end
end
