json.array!(@regists) do |regist|
  json.extract! regist, 
  json.url regist_url(regist, format: :json)
end
