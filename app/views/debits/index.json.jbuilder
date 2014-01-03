json.array!(@debits) do |debit|
  json.extract! debit, :id, :description, :debt_item_id, :user_id, :total_value, :type_payment_id, :payment_date, :expiration_date, :partition_value, :partition_number, :total_partition_number, :type_debit_id, :invoice
  json.url debit_url(debit, format: :json)
end
