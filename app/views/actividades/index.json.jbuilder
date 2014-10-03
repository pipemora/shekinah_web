json.array!(@actividades) do |actividade|
  json.extract! actividade, :id, :nombre, :description, :fecha
  json.url actividade_url(actividade, format: :json)
end
