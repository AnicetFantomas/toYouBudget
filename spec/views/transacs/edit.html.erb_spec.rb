require 'rails_helper'

RSpec.describe "transacs/edit", type: :view do
  before(:each) do
    @transac = assign(:transac, Transac.create!(
      name: "MyString",
      amount: "9.99",
      user: nil
    ))
  end

  it "renders the edit transac form" do
    render

    assert_select "form[action=?][method=?]", transac_path(@transac), "post" do

      assert_select "input[name=?]", "transac[name]"

      assert_select "input[name=?]", "transac[amount]"

      assert_select "input[name=?]", "transac[user_id]"
    end
  end
end
