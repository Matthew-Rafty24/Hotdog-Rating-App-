json.array!(@hotdogs) do |hotdog|
  json.extract! hotdog, :id, :name, :price, :description
  json.url hotdog_url(hotdog, format: :json)
end
