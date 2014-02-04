json.array!(@ratings) do |rating|
  json.extract! rating, :id, :stars, :comment, :campsite_id, :name, :description, :location, :latitude, :longitude
  json.url rating_url(rating, format: :json)
end
