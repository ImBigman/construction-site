class CreateFloors < ActiveRecord::Migration[6.0]
  def change
    create_table :floors do |t|
      t.string :title, null: false
      t.integer :level, null: false
      t.string :area, null: false
      t.string :rooms_structure, null: false
      t.integer :summary, null: false
      t.string :small_image
      t.string :large_image

      t.timestamps
    end
  end
end
