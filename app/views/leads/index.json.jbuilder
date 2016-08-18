json.array!(@leads) do |lead|
  json.extract! lead, :id, :name, :phone, :project_id, :project_name, :f_1, :g_2, :g_3
  json.url lead_url(lead, format: :json)
end
