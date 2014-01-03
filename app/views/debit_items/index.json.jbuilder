json.array!(@debit_items) do |debit_item|
  json.extract! debit_item, :id, :shop, :description, :value
  json.url debit_item_url(debit_item, format: :json)
end
