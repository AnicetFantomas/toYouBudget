require 'rails_helper'

RSpec.describe "transacs/new", type: :view do
  before(:each) do
    assign(:transac, Transac.new(
      name: "MyString",
      amount: "9.99",
      user: nil
    ))
  end

  it "renders new transac form" do
    render

    assert_select "form[action=?][method=?]", transacs_path, "post" do

      assert_select "input[name=?]", "transac[name]"

      assert_select "input[name=?]", "transac[amount]"

      assert_select "input[name=?]", "transac[user_id]"
    end
  end
end
