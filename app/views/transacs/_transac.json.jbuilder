json.extract! transac, :id, :name, :amount, :user_id, :created_at, :updated_at
json.url transac_url(transac, format: :json)
