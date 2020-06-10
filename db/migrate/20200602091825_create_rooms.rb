class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.text :name, null: false
      t.float :area, null: false
      t.string :image, null: false
      t.belongs_to :floor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
