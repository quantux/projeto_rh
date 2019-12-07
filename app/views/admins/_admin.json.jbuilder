json.extract! admin, :id, :nome, :username, :password, :created_at, :updated_at
json.url admin_url(admin, format: :json)
