json.array! posts do |comic|
  json.partial! 'comic', comic: comic
end
