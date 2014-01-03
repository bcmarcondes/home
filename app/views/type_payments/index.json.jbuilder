json.array!(@type_payments) do |type_payment|
  json.extract! type_payment, :id, :description, :brand, :account, :agency, :account_owner
  json.url type_payment_url(type_payment, format: :json)
end
