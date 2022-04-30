class Customer < ApplicationRecord
    has_many :orders

    validates :name,presence: true,uniqueness: true
    validates :email,email:true,uniqueness:true
end
