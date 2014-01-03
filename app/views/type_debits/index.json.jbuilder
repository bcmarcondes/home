json.array!(@type_debits) do |type_debit|
  json.extract! type_debit, :id, :description
  json.url type_debit_url(type_debit, format: :json)
end
