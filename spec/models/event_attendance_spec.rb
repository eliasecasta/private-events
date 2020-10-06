require 'rails_helper'

RSpec.describe EventAttendance, type: :model do
  context 'Creating Event With User Association' do
    it 'Returns True For Valid Event Attendance' do
      ea = build(:event_attendance)
      expect(ea.save).to eql(true)
    end
  end
end
