require 'rails_helper'

RSpec.describe "order_details/edit", type: :view do
  before(:each) do
    @order_detail = assign(:order_detail, OrderDetail.create!(
      quantity: 1,
      item_price: 1.5
    ))
  end

  it "renders the edit order_detail form" do
    render

    assert_select "form[action=?][method=?]", order_detail_path(@order_detail), "post" do

      assert_select "input[name=?]", "order_detail[quantity]"

      assert_select "input[name=?]", "order_detail[item_price]"
    end
  end
end
