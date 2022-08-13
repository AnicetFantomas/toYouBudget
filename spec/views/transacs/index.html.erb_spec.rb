require 'rails_helper'

RSpec.describe "transacs/index", type: :view do
  before(:each) do
    assign(:transacs, [
      Transac.create!(
        name: "Name",
        amount: "9.99",
        user: nil
      ),
      Transac.create!(
        name: "Name",
        amount: "9.99",
        user: nil
      )
    ])
  end

  it "renders a list of transacs" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
