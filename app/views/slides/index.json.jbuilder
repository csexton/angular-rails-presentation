json.array!(@slides) do |slide|
  json.id slide.id
  json.body slide.body
end
