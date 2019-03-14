class AddCapabilityToCampgrounds < ActiveRecord::Migration[5.1]
  def change
    add_column :campgrounds, :capability, :integer
  end
end
