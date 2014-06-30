json.array!(@sales) do |sale|
  json.extract! sale, :id, :customer_id, :amount, :paid_at, :service_id, :staff_id
  json.url sale_url(sale, format: :json)
end
