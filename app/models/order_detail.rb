class OrderDetail < ApplicationRecord
    belongs_to :Item
    belongs_to :Order
end
