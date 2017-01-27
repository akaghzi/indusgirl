json.extract! supplier, :id, :name, :contact_name, :phone, :address1, :address2, :city, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)