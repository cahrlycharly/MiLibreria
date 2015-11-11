json.array!(@autors) do |autor|
  json.extract! autor, :id, :nombre, :apellido, :nacionalidad, :genero_id
  json.url autor_url(autor, format: :json)
end
