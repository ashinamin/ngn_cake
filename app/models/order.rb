class Order < ApplicationRecord
<<<<<<< HEAD



=======
  belongs_to :customer
>>>>>>> f7f9fe52bd726a61ea1d27f1eb76a5d92e99933b
  has_many :ordered_items
  has_many :items, through: :ordered_items
  has_many :order_details, dependent: :destroy
  enum status: {入金待ち: 0, 入金確認: 1, 製作中: 2, 発送準備中: 3, 発送済み: 4}
  enum payment_method: { credit_card: 0, transfer: 1 }

end
