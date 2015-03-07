json.array!(@bids) do |bid|
  json.extract! bid, :id, :price
  json.url bid_url(bid, format: :json)
end
