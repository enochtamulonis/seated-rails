class AddTimeFieldsToLocations < ActiveRecord::Migration[7.1]
  def change
    add_column :locations, :opening_time, :time
    add_column :locations, :closing_time, :time
  end
end
