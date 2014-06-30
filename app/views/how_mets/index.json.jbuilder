json.array!(@how_mets) do |how_met|
  json.extract! how_met, :id, :name
  json.url how_met_url(how_met, format: :json)
end
