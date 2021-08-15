require 'rails_helper'

RSpec.describe Item do
  describe '#completed?' do
    it 'returns true if a timestamp is present' do
      item = Item.create!(title: 'clean my room', completed_at: Date.current)

      expect(item).to be_complete
    end

    it 'returns false if a timestamp is not present' do
      item = Item.create!(title: 'clean my room', completed_at: nil)

      expect(item).not_to be_complete
    end
  end
end
