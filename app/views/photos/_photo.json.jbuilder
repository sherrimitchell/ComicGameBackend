json.(@photo, :id)

json.photo_info do
	json.photo @photo.photo
	json.image_url @photo.image_url
	json.audio_asset_url @photo.audio_asset_url
	json.photo_asset_url @photo.photo_asset_url 
	json.photo_asset_x_position @photo.photo_asset_x_position
	json.photo_asset_y_position @photo.photo_asset_y_position
	json.photo_asset_height @photo.photo_asset_height
	json.photo_asset_text @photo.photo_asset_text
end

json.creator do
  json.(photo.user, :username, :email)
end