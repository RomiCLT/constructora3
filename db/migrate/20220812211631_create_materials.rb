class CreateMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :materials do |t|
      t.string :nombre
      t.string :descripcion
      t.string :unidad_medida
      t.references :category, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
