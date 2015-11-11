class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :nombre
      t.string :idioma
      t.references :genero, index: true
      t.references :autor, index: true

      t.timestamps
    end
  end
end
