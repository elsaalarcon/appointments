json.extract! prescription, :id, :name, :comments, :notes_id, :created_at, :updated_at
json.url prescription_url(prescription, format: :json)
