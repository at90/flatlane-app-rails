json.array!(@prelaunches) do |prelaunch|
  json.extract! prelaunch, :id, :b_name, :phone, :city
  json.url prelaunch_url(prelaunch, format: :json)
end
