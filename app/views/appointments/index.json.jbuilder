json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :start_time, :end_time, :client_id, :service_id, :notes
  json.url appointment_url(appointment, format: :json)
end
