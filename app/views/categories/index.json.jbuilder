json.array!(@categories) do |category|
  json.id category.id
  json.text category.name
end
