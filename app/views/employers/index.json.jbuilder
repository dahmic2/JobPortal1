json.array!(@employers) do |employer|
  json.extract! employer, :id, :contact_name, :contact_lastname, :contact_email, :password, :company_name, :location, :address, :phone, :website
  json.url employer_url(employer, format: :json)
end
