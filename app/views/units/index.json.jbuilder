json.array!(@units) do |unit|
  json.extract! unit, :id, :name, :description, :base_cost, :unit_type_id, :faction_id, :model_count
  json.url unit_url(unit, format: :json)
end
