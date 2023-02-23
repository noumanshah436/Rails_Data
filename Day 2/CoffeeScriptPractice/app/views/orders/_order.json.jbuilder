json.extract! order, :id, :credit_card_number, :credit_card_expires_on, :created_at, :updated_at
json.url order_url(order, format: :json)
