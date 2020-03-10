require 'rails_helper'

RSpec.describe "heros/edit", type: :view do
  before(:each) do
    @hero = assign(:hero, Hero.create!(
      name: "MyString",
      bio: "MyString"
    ))
  end

  it "renders the edit hero form" do
    render

    assert_select "form[action=?][method=?]", hero_path(@hero), "post" do

      assert_select "input[name=?]", "hero[name]"

      assert_select "input[name=?]", "hero[bio]"
    end
  end
end
