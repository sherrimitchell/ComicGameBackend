json.array! comics do |comic|
  json.partial! 'comic', comic: comic
end
