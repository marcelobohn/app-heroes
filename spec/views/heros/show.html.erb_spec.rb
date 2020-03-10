require 'rails_helper'

RSpec.describe "heros/show", type: :view do
  before(:each) do
    @hero = assign(:hero, Hero.create!(
      name: "Name",
      bio: "Bio"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Bio/)
  end
end
