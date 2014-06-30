json.array!(@discounts) do |discount|
  json.extract! discount, :id, :percent_off, :flat_amount
  json.url discount_url(discount, format: :json)
end
