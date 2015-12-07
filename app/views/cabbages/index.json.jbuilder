json.array!(@cabbages) do |cabbage|
  json.extract! cabbage, :id, :name, :content
  json.url cabbage_url(cabbage, format: :json)
end
