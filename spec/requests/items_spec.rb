require 'rails_helper'

RSpec.describe 'Items flow' do
  it 'redirects to the index page after successful create' do
    post '/items', params: { item: { title: 'clean my room', completed_at: nil }}

    expect(response).to redirect_to items_url
  end

  it 'redirects to the index page after successful update' do
    post '/items', params: { item: { title: 'clean my room', completed_at: nil }}
    item = Item.first
    put item_path(item), params: { item: { completed_at: Date.current }}

    expect(response).to redirect_to items_url
  end
end
