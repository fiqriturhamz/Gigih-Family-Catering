require 'rails_helper'

RSpec.describe "order_details/index", type: :view do
  before(:each) do
    assign(:order_details, [
      OrderDetail.create!(
        quantity: 2,
        item_price: 3.5
      ),
      OrderDetail.create!(
        quantity: 2,
        item_price: 3.5
      )
    ])
  end

  it "renders a list of order_details" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
  end
end
