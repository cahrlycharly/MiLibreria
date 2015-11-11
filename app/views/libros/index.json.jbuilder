json.array!(@libros) do |libro|
  json.extract! libro, :id, :nombre, :idioma, :genero_id, :autor_id
  json.url libro_url(libro, format: :json)
end
