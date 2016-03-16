json.array!(@skills) do |skill|
  json.extract! skill, :id, :technology, :profiency, :scale
  json.url skill_url(skill, format: :json)
end
