class Prestamo < ActiveRecord::Base
  belongs_to :libro
  belongs_to :lector
end
