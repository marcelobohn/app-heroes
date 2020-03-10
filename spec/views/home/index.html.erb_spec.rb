require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
  it 'displays default text' do
    @heroes = {}
    
    render

    expect(rendered).to match('Home#index')
  end
end
