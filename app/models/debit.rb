class Debit < ActiveRecord::Base
  belongs_to :debit_item
  belongs_to :user
  belongs_to :type_payment
  belongs_to :type_debit
  
  #attr_accessible :debit_item_id
end
