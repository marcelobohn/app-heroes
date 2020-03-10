require 'rails_helper'

RSpec.describe 'file_uploads/new.html.erb', type: :view do
  before(:each) do
    @hero = create(:hero)
  end

  it 'displays default text' do
    render

    expect(rendered).to match('Upload for Hero Capitan America')
  end
end
