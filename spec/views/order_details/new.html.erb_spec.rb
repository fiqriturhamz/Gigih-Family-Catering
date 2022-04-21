require 'rails_helper'

RSpec.describe "order_details/new", type: :view do
  before(:each) do
    assign(:order_detail, OrderDetail.new(
      quantity: 1,
      item_price: 1.5
    ))
  end

  it "renders new order_detail form" do
    render

    assert_select "form[action=?][method=?]", order_details_path, "post" do

      assert_select "input[name=?]", "order_detail[quantity]"

      assert_select "input[name=?]", "order_detail[item_price]"
    end
  end
end
