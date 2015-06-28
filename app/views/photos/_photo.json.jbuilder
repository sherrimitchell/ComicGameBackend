
json.photo_info do
	json.photo photo.id
	json.image_url photo.image_url
end

json.creator do
  json.(photo)
end

