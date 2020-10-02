RSpec.describe 'Hello world', type: :system do

  describe 'index page' do
    it 'shows the right content' do
      visit sign_in_path
      expect(page).to have_content('New User')
    end
  end
end