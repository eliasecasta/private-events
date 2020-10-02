require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Creating A New User' do
    it 'Returns True For Valid User' do
      u = build(:user)
      expect(u.save).to eql(true)
    end
  end
end
