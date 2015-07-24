json.array!(@sales) do |sale|
  json.extract! sale, :id, :price, :product_id, :bar_id
  json.url sale_url(sale, format: :json)
end
