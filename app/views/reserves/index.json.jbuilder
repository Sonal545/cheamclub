json.array!(@reserves) do |reserf|
  json.extract! reserf, :id, :lawn_id, :date, :details
  json.url reserf_url(reserf, format: :json)
end
