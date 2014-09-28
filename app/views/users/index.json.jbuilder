json.array!(@users) do |user|
  json.extract! user, :id, :name, :lastname, :email, :password, :location, :address, :spol, :date_of_birth, :phone
  json.url user_url(user, format: :json)
end
