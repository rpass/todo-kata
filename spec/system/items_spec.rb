require 'rails_helper'

RSpec.describe 'Managing Items' do
  it 'enables a user to add, remove, edit and complete a todo item' do
    visit '/'
    click_link 'New Item'

    fill_in 'Title', with: 'clean my room'
    click_button 'Create Item'

    click_link 'Edit'

    fill_in 'Title', with: 'clean the house'
    click_button 'Update Item'

    expect(page).to have_text 'clean the house'
    click_link 'Complete'
    expect(page).to have_text 'true'
    accept_alert do
      click_link 'Destroy'
    end
    expect(page).not_to have_text 'clean the house'
  end
end
