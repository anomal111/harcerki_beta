json.array!(@orders) do |order|
  json.extract! order, :id, :paid, :deadline, :status
  json.url order_url(order, format: :json)
end
