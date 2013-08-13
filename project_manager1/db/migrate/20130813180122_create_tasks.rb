class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :due_date
      t.text :description
      t.string :project
      t.boolean :completed

      t.timestamps
    end
  end
end
