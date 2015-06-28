# json.(photo, :id)
# json.(audio_asset_url, :audio_asset_url)
# json.(photo_asset_url, :photo_asset_url, photo_asset_x_position: photo_asset_x_position, photo_asset_y_position: photo_asset_y_position, photo_asset_height: photo_asset_height, photo_asset_text: photo_asset_text)
#
# json.photo_info do
#   json.(photo, :image_url, :audio_asset_url, :photo_asset_url, :photo_asset_x_position, :photo_asset_y_position, :photo_asset_width, :photo_asset_height, :photo_asset_text,:created_at, :updated_at)
# end
#
# json.creator do
#   json.(photo.user, :username, :email)
# end

json.photo_info do
	json.photo photo.id
	json.image_url photo.image_url
end

json.creator do
  json.(photo)
end
