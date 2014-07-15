json.array!(@orders) do |order|
  json.extract! order, :id, :client_id, :actual_amount, :total_amount, :discount, :created_by
  json.url order_url(order, format: :json)
end
