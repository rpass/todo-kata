json.extract! item, :id, :title, :completed_at, :created_at, :updated_at
json.url item_url(item, format: :json)
