json.array!(@slides) do |slide|
  json.id slide.id
  json.name slide.name
  json.body slide.body
end
