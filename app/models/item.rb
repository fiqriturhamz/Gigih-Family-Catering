class Item < ApplicationRecord
    validates :name, uniqueness: true
    has_many :order_detail
    has_many :category
end
