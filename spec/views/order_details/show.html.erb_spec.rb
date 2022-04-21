require 'rails_helper'

RSpec.describe "order_details/show", type: :view do
  before(:each) do
    @order_detail = assign(:order_detail, OrderDetail.create!(
      quantity: 2,
      item_price: 3.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
  end
end
