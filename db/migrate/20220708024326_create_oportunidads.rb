class CreateOportunidads < ActiveRecord::Migration[7.0]
  def change
    create_table :oportunidads do |t|
      
      ## Campos del requerimiento
      t.string :cargo, null: false, default: ""
      t.string :descripcion, null: false, default: ""
      t.string :vacantes, null: false, default: ""
      t.integer :sueldo, null: false, default: ""
      t.date :fecha_inicio, null: false, default: ""
      t.references :tipo, null: false, foreign_key: true
      t.references :regionch, null: false, foreign_key: true
      t.references :empresa, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
