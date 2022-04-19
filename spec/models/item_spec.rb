require 'rails_helper'


RSpec.describe Item, type: :model do
it "is invalid with a duplicate name" do
    item1 = Item.create(
      name: "Nasi Uduk",
      description: "Betawi style steamed rice cooked in coconut milk. Delicious!",
      price: 10000.0
    )
    
    item2 = Item.new(
      name: "Nasi Uduk",
      description: "Just with a different description.",
      price: 10000.0
    )

    item2.valid?
    
    expect(item2.errors[:name]).to include("has already been taken")
  end
end
