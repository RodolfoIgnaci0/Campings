class AddParamsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :integer
  end
end
