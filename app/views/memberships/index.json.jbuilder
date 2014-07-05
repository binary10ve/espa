json.array!(@memberships) do |membership|
  json.extract! membership, :id, :campaing_id, :client_id, :start_date, :end_date, :note
  json.url membership_url(membership, format: :json)
end
