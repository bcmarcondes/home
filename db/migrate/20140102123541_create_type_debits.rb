class CreateTypeDebits < ActiveRecord::Migration
  def change
    create_table :type_debits do |t|
      t.string :description

      t.timestamps
    end
  end
end
