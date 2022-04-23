class Item < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :OrderDetail
    belongs_to :Category
end
