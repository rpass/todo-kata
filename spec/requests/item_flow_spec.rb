require 'rails_helper'

RSpec.describe 'Item flow' do
  it 'redirects to the index view after successful creation of an item' do
    post '/items', params: { item: { description: "clean my room", complete: false }}

    expect(response).to redirect_to(items_path)
  end

  it 'redirects to the index view after successful updatign of an item' do
    post '/items', params: { item: { description: "clean my room", complete: false }}
    patch item_url(assigns(:item)), params: { item: { complete: true }}

    expect(response).to redirect_to(items_path)
  end
end
