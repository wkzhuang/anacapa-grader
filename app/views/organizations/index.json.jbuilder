json.array!(@organizations) do |organization|
  json.extract! organization, :id, :class_name, :quarter, :instructor
  json.url organization_url(organization, format: :json)
end
