json.extract! category, :id, :name, :parent_id, :active, :display_order, :created_at, :updated_at
json.url category_url(category, format: :json)