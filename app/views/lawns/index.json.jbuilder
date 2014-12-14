json.array!(@lawns) do |lawn|
  json.extract! lawn, :id, :lawn_no
  json.url lawn_url(lawn, format: :json)
end
