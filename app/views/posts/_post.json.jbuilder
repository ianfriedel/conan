json.extract! post, :id, :title, :excerpt, :create_date, :author, :body, :category_id, :created_at, :updated_at
json.url post_url(post, format: :json)
