class CreateMaterialsHasObras < ActiveRecord::Migration[7.0]
  def change
    create_table :materials_has_obras do |t|
      t.references :material, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true
      t.integer :cantidad

      t.timestamps
    end
  end
end
