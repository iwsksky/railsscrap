json.array!(@connpasses) do |connpass|
  json.extract! connpass, :id
  json.url connpass_url(connpass, format: :json)
end
