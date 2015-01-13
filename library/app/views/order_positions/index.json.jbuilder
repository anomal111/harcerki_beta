json.array!(@order_positions) do |order_position|
  json.extract! order_position, :id, :ordinal, :amount, :completed, :price, :references, :references
  json.url order_position_url(order_position, format: :json)
end
