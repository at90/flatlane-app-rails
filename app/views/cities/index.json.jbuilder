json.array!(@cities) do |city|
  json.extract! city, :id, :c_id, :c_name, :c_description, :c_landmark1, :c_landmark2
  json.url city_url(city, format: :json)
end
