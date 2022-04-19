class OrderDetail < ApplicationRecord
    has_many :pesanan
    has_many :order_detail
end
