json.array!(@helps) do |help|
  json.extract! help, :id, :title, :body
  json.url help_url(help, format: :json)
end
