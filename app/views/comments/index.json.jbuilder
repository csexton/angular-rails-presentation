json.array! @comments do |comment|
  json.id comment.id
  json.name comment.name
  json.text comment.text
end
