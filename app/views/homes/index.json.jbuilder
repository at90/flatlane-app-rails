json.array!(@homes) do |home|
  json.extract! home, :id, :name, :b_id, :cat, :price, :address1, :address2, :c_id, :state, :description, :area, :project_date, :feat_1, :feat_2, :amen, :l_gmap, :l_prox1_name, :l_prox1, :l_prox2_name, :l_prox2, :l_prox3_name, :l_prox3, :l_prox4_name, :l_prox4
  json.url home_url(home, format: :json)
end
