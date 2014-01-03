class CreateDebitItems < ActiveRecord::Migration
  def change
    create_table :debit_items do |t|
      t.string :shop
      t.string :description
      t.float :value

      t.timestamps
    end
  end
end
