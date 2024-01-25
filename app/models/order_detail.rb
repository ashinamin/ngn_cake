class OrderDetail < ApplicationRecord
    belongs_to :order
<<<<<<< HEAD
    belongs_to :customer

=======
    belongs_to :item
    
>>>>>>> f7f9fe52bd726a61ea1d27f1eb76a5d92e99933b
    enum making_status: {着手不可: 0, 製作待ち: 1, 製作中: 2, 製作完了: 3}
end
