json.array!(@dots) do |dot|
  json.extract! dot, :id
  json.url dot_url(dot, format: :json)
end
