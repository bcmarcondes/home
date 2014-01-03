class CreateTypePayments < ActiveRecord::Migration
  def change
    create_table :type_payments do |t|
      t.string :description
      t.string :brand
      t.string :account
      t.string :agency
      t.integer :account_owner

      t.timestamps
    end
  end
end
