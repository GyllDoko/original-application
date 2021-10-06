json.extract! card, :id, :number, :cvv, :deadline, :owner_first_name, :owner_last_name, :user_id, :created_at, :updated_at
json.url card_url(card, format: :json)
