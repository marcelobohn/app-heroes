require 'rails_helper'

RSpec.describe "heros/index", type: :view do
  before(:each) do
    assign(:heros, [
      Hero.create!(
        name: "Name",
        bio: "Bio"
      ),
      Hero.create!(
        name: "Name",
        bio: "Bio"
      )
    ])
  end

  it "renders a list of heros" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Bio".to_s, count: 2
  end
end
