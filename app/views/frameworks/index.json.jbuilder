json.array!(@frameworks) do |framework|
  json.extract! framework, :id, :name, :description, :vote
  json.url framework_url(framework, format: :json)
end
