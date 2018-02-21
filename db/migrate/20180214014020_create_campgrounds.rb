class CreateCampgrounds < ActiveRecord::Migration[5.1]
  def change
    create_table :campgrounds do |t|
      t.string :name
      t.string :direction
      t.string :region
      t.string :photo

      t.timestamps
    end
  end
end
