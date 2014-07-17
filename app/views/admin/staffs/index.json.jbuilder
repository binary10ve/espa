json.array!(@staffs) do |staff|
  json.extract! staff, :id, :full_name, :date_of_birth, :pan_no, :permanent_address, :temporary_address, :phone1, :phone2, :emergency_contact_no
  json.url admin_staff_url(staff, format: :json)
end
