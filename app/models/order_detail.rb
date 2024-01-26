class OrderDetail < ApplicationRecord
    belongs_to :order
    belongs_to :item

    enum making_status: {unable_start: 0, waiting_for_production: 1, in_making: 2, making_completed: 3}
  
end
