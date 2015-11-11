class Libro < ActiveRecord::Base
  belongs_to :genero
  belongs_to :autor

end
