json.array!(@coordinators) do |coordinator|
  json.extract! coordinator, :id, :name, :surname, :city, :street, :building, :apartment, :zip_code, :login, :password, :status
  json.url coordinator_url(coordinator, format: :json)
end
