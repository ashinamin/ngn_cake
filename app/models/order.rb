class Order < ApplicationRecord
  belongs_to :customer
  has_many :cart_items
  has_many :items, through: :cart_items
  has_many :order_details, dependent: :destroy
  
  enum status: {waiting_for_payment: 0, payment_confirmation: 1, making: 2, shipping_in_process: 3, shipping_completed: 4}
  enum payment_method: { credit_card: 0, transfer: 1 }

  def self.order_statuses_i18n
        order_statuses.keys.map do |status|
          [I18.t("enums.order.status.#{status}"), status]
        end.to_h
  end
end
