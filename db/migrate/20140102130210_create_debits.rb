class CreateDebits < ActiveRecord::Migration
  def change
    create_table :debits do |t|
      t.string :description
      t.references :debit_item, index: true
      t.references :user, index: true
      t.float :total_value
      t.references :type_payment, index: true
      t.date :payment_date
      t.date :expiration_date
      t.float :partition_value
      t.integer :partition_number
      t.integer :total_partition_number
      t.references :type_debit, index: true
      t.float :invoice

      t.timestamps
    end
  end
end
