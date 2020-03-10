require 'rails_helper'

RSpec.describe "heros/new", type: :view do
  before(:each) do
    assign(:hero, Hero.new(
      name: "MyString",
      bio: "MyString"
    ))
  end

  it "renders new hero form" do
    render

    assert_select "form[action=?][method=?]", heros_path, "post" do

      assert_select "input[name=?]", "hero[name]"

      assert_select "input[name=?]", "hero[bio]"
    end
  end
end
