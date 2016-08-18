json.array!(@builders) do |builder|
  json.extract! builder, :id, :b_id, :b_name, :b_projects_completed, :b_weblink
  json.url builder_url(builder, format: :json)
end
