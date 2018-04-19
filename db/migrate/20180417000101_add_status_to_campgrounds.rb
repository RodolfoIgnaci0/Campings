class AddStatusToCampgrounds < ActiveRecord::Migration[5.1]
  def change
    add_column :campgrounds, :status, :boolean, default: true
  end
end
