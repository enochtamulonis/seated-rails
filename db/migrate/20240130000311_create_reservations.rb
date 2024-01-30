class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.belongs_to :location, null: false, foreign_key: true
      t.belongs_to :customer, null: false, foreign_key: true
      t.datetime :reservation_date

      t.timestamps
    end
  end
end
