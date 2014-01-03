class Debit < ActiveRecord::Base
  belongs_to :debt_item
  belongs_to :user
  belongs_to :type_payment
  belongs_to :type_debit
end
