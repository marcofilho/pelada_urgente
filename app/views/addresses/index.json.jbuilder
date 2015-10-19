json.array!(@addresses) do |address|
  json.extract! address, :id, :country, :state, :city, :district, :street, :zip_code, :user_id
  json.url address_url(address, format: :json)
end
