class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.string :name, null: false
      t.string :coords
      t.belongs_to :floor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
