require 'rails_helper'

RSpec.describe 'Visitor signs up', type: :feature do
  scenario 'with valid email and password' do
    sign_up

    expect(page).to have_content('User was successfully created.')
  end

  scenario 'with valid email and password' do
    sign_up
    sign_in
    visit new_event_path

    fill_in 'Title', with: 'My Event'
    fill_in 'Location', with: 'My House'
    fill_in 'Description', with: 'My Party'
    fill_in 'Title', with: 'My Event'

    select = page.find('select#attendees')
    select.select 'Test Name'

    click_button 'Create Event'

    # Creator
    expect(page).to have_content('Event Creator: Test Name')
    expect(page).to have_css('li', text: 'Test Name', visible: true)
  end

  def sign_up
    visit new_user_path
    fill_in 'Name', with: 'Test Name'
    fill_in 'Email', with: 'test@test.com'
    click_button 'Create User'
  end

  def sign_in
    visit sign_in_path
    fill_in 'Email', with: 'test@test.com'
    click_button 'Sign In!'
  end
end
