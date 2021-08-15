require 'rails_helper'

RSpec.describe Item do
  describe '#completed?' do
    it 'returns true if a timestamp is present' do
      item = described_class.create!(title: 'clean my room', completed_at: Date.current)

      expect(item).to be_complete
    end

    it 'returns false if a timestamp is not present' do
      item = described_class.create!(title: 'clean my room', completed_at: nil)

      expect(item).not_to be_complete
    end
  end

  describe '#complete!' do
    it 'marks the item as completed' do
      item = described_class.create!(title: 'clean my room')

      item.complete!

      expect(item).to be_complete
    end

    it 'marks the time as completed at the current timestamp' do
      item = described_class.create!(title: 'clean my room')

      travel_to '2021-01-01 12:34:56' do
        item.complete!
      end

      expect(item.completed_at).to eq(DateTime.new(2021, 1, 1, 12, 34, 56))
    end
  end

  describe '.delete_all' do
    it 'deletes all items' do
      described_class.create!(title: 'clean my room')
      described_class.create!(title: 'clean the kitchen')

      expect {
        described_class.delete_all
      }.to change(described_class, :count).from(2).to(0)
    end
  end
end
