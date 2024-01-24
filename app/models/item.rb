class Item < ApplicationRecord

  has_one_attached :item_image
  has_many :care_items, dependent: :destroy
  has_many :order_details
  has_many :orders, through: :order_details
  belongs_to :genre

  def add_tax_price
    (self.price * 1.10).round
  end

  def get_item_image(width, height)
    unless item_image.attached?
      file_path = Rails.root.join('app/assets/images/NO IMAGE.png')
      item_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
      item_image.variant(resize_to_limit: [width, height]).processed
  end
end