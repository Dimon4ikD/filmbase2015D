json.array!(@banners) do |banner|
  json.extract! banner, :id, :film_id, :image, :frequency
  json.url banner_url(banner, format: :json)
end
