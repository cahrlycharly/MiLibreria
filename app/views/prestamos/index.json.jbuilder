json.array!(@prestamos) do |prestamo|
  json.extract! prestamo, :id, :fecha_de_prestamo, :libro_id, :lector_id
  json.url prestamo_url(prestamo, format: :json)
end
