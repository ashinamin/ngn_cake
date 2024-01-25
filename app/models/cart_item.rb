class CartItem < ApplicationRecord
  belongs_to :customer
  belongs_to :item
  belongs_to :order, optional: true

  def add_tax_price
    (self.price * 1.10).round
  end

  def subtotal
    item.add_tax_price * amount
  end

  def update_total
    update(total: cart_items.sum(&:subtotal))
  end
end
