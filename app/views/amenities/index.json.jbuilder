json.array!(@amenities) do |amenity|
  json.extract! amenity, :id, :name, :icon
  json.url amenity_url(amenity, format: :json)
end
