class Order < ApplicationRecord
  has_many :ordered_items
  has_many :items, through: :ordered_items
  has_many :order_details, dependent: :destroy

   enum status: {waiting_for_payment: 0, payment_confirmation: 1, making: 2, shipping_in_process: 3, shipping_completed: 4}
  enum payment_method: { credit_card: 0, transfer: 1 }
  has_many :items

end
