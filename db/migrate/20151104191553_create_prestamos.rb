class CreatePrestamos < ActiveRecord::Migration
  def change
    create_table :prestamos do |t|
      t.date :fecha_de_prestamo
      t.references :libro, index: true
      t.references :lector, index: true

      t.timestamps
    end
  end
end
