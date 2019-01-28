json.extract! user, :id, :name, :email, :post_id, :comment_id, :moderator, :creator, :banned, :created_at, :updated_at
json.url user_url(user, format: :json)
