class Order < ApplicationRecord
  belongs_to :customer
  has_many :cart_items
  has_many :items, through: :cart_items
  has_many :order_details, dependent: :destroy
  enum status: {入金待ち: 0, 入金確認: 1, 製作中: 2, 発送準備中: 3, 発送済み: 4}
  enum payment_method: { credit_card: 0, transfer: 1 }
  has_many :items

  def self.order_statuses_i18n
        order_statuses.keys.map do |status|
          [I18.t("enums.order.status.#{status}"), status]
        end.to_h
  end
end
