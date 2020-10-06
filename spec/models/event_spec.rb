require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'Creating Event' do
    it 'Saves Valid' do
      e = build(:event)
      expect(e.save).to eql(true)
    end
  end
end
