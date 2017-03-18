json.extract! mytopic, :id, :title, :description, :created_at, :updated_at
json.url mytopic_url(mytopic, format: :json)
