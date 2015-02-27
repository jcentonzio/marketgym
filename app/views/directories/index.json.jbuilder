json.array!(@directories) do |directory|
  json.extract! directory, :id
  json.url directory_url(directory, format: :json)
end
