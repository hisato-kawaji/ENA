json.array!(@gathers) do |gather|
  json.extract! gather, 
  json.url gather_url(gather, format: :json)
end
