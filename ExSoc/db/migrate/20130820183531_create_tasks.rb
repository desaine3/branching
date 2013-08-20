class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :trip_Name
      t.string :trip_Leaders
      t.string :trip_Area
      t.string :trip_Location
      t.date :start_date
      t.date :end_Date
      t.integer :trip_Cost
      t.text :trip_description
      t.boolean :completed

      t.timestamps
    end
  end
end
