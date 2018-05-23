class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.date :initialDay
      t.date :finalDay
      t.boolean :payment, default: false

      t.timestamps
    end
  end
end
