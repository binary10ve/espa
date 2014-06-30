json.array!(@clients) do |client|
  json.extract! client, :id, :first_name, :last_name, :phone1, :phone2, :email_id, :address, :notes, :birthdate, :how_met_id
  json.url client_url(client, format: :json)
end
