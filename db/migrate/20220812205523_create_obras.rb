class CreateObras < ActiveRecord::Migration[7.0]
  def change
    create_table :obras do |t|
      t.string :nombre
      t.date :fecha_inicio
      t.date :fecha_fin
      t.integer :costo
      t.string :calle
      t.string :numero
      t.string :ciudad
      t.string :estado
      t.string :codigo_postal

      t.timestamps
    end
  end
end
