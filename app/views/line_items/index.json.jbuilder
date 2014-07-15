json.array!(@line_items) do |line_item|
  json.extract! line_item, :id, :job_id, :order_id, :amount, :quantity
  json.url line_item_url(line_item, format: :json)
end
