class CreateAsignacions < ActiveRecord::Migration[7.0]
  def change
    create_table :asignacions do |t|
      ## Campos del requerimiento
      t.references :oportunidad, null: false, foreign_key: true
      t.references :postulante, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
