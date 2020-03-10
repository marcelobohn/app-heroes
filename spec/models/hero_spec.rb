require 'rails_helper'

RSpec.describe Hero, type: :model do
  let(:hero) { create(:hero) }

  context 'created by bot' do
    it 'default value' do
      expect(hero.name).to eq('Capitan America')
    end
  end
end
