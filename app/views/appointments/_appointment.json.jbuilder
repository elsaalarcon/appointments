json.extract! appointment, :id, :start_time, :symptoms, :user_id, :room_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
