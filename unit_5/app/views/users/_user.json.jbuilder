json.extract! user, :id, :name, :email, :moderator, :creator, :banned, :comments_count, :created_at, :updated_at
json.url user_url(user, format: :json)
