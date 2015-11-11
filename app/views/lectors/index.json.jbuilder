json.array!(@lectors) do |lector|
  json.extract! lector, :id, :nombre, :apellido, :oficina, :libro_id
  json.url lector_url(lector, format: :json)
end
