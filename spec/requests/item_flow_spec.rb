require 'rails_helper'

RSpec.describe 'Item flow' do
  it 'redirects to the index view after successful creation of an item' do
    post '/items', params: { item: { description: "clean my room", complete: false }}

    expect(response).to redirect_to(items_path)
  end
end
