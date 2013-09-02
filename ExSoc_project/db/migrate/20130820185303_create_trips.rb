class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :leaders
      t.string :county
      t.string :location
      t.date :start_date
      t.date :end_date
      t.integer :cost
      t.text :description
      t.boolean :accomplished

      t.timestamps
    end
  end
end
