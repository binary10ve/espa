json.array!(@rate_cards) do |rate_card|
  json.extract! rate_card, :id, :job_id, :service_charge
  json.url rate_card_url(rate_card, format: :json)
end
