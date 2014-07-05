json.array!(@staffs) do |staff|
  json.extract! staff, :id, :first_name, :last_name, :date_of_birth, :pan_no, :permanent_address, :temporary_address, :phone1, :phone2, :emergency_contact_no
  json.url staff_url(staff, format: :json)
end
