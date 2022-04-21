class Item < ApplicationRecord
    has_many :OrderDetail
    belongs_to :Category
end
