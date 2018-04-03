class AddPhotosToCampground < ActiveRecord::Migration[5.1]
  def change
    add_column :campgrounds, :photo1, :string
    add_column :campgrounds, :photo2, :string
    add_column :campgrounds, :photo3, :string
    add_column :campgrounds, :photo4, :string
  end
end
