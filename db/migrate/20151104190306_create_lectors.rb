class CreateLectors < ActiveRecord::Migration
  def change
    create_table :lectors do |t|
      t.string :nombre
      t.string :apellido
      t.string :oficina
      t.references :libro, index: true

      t.timestamps
    end
  end
end
