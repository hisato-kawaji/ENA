json.array!(@recommends) do |recommend|
  json.extract! recommend, 
  json.url recommend_url(recommend, format: :json)
end
