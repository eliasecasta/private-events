RSpec.describe 'Guest should not be able to create an event', type: :system do
  describe 'New Event' do
    it 'Should redirect to User Sign in' do
      visit new_event_path
      click_button 'Create Event'
      expect(page).not_to have_content('Event Creator')
    end
  end
end
