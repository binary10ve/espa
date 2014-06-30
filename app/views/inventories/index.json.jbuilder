json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :name, :description, :type, :cost, :quantity, :purchased_on
  json.url inventory_url(inventory, format: :json)
end
