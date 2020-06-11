class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.integer :price, null: false
      t.integer :position
      t.string :work_time
      t.date :deadline
      t.boolean :completed
      t.belongs_to :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
