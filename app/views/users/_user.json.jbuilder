json.extract! user, :id, :name, :full_address, :med_card_number, :plant_count, :user_name, :password_digest, :role, :dispensary_id, :created_at, :updated_at
json.url user_url(user, format: :json)
