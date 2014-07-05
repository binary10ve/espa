json.array!(@admin_attendances) do |admin_attendance|
  json.extract! admin_attendance, :id, :staff_id, :time_in, :time_out, :attendance_date, :showed_up
  json.url admin_attendance_url(admin_attendance, format: :json)
end
