RSpec.describe 'Sign In Page', type: :system do
  it 'shows the right content' do
    visit sign_in_path
    expect(page).to have_content('Sign In')
  end
end
