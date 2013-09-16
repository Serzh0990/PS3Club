json.array!(@news) do |news|
  json.extract! news, :title, :image, :description
  json.url news_url(news, format: :json)
end
