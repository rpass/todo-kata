require 'rails_helper'

RSpec.describe 'Items' do
  it 'enables a user to complete an item' do
    visit '/'
    click_link 'New Item'

    fill_in 'Description', with: 'clean my room'
    click_button 'Create Item'

    expect(page).to have_text  'clean my room'
    click_link 'Complete'

    expect(page).to have_text 'true'
  end
end
