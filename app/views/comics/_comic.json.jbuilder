json.(comic, :id)

json.comic_info do
  json.(comic, :image_url, :title, :created_at, :updated_at)
end

json.creator do
  json.(comic.user, :user_name, :email)
end