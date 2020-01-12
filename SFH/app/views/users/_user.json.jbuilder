json.extract! user, :id, :name, :bio, :age, :thumbnail_image_url, :created_at, :updated_at
json.url user_url(user, format: :json)
