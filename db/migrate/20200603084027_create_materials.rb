class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.string :title, null: false
      t.string :type, null: false
      t.integer :quantity, null: false
      t.integer :price_per_unit, null: false
      t.integer :summary
      t.belongs_to :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
