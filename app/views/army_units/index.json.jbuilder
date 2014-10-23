json.array!(@army_units) do |army_unit|
  json.extract! army_unit, :id, :unit_id, :army_id
  json.url army_unit_url(army_unit, format: :json)
end
