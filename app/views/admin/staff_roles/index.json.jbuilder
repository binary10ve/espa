json.array!(@staff_roles) do |staff_role|
  json.extract! staff_role, :id, :staff_id, :role_id
  json.url staff_role_url(staff_role, format: :json)
end
