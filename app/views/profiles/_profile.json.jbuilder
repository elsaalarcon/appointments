json.extract! profile, :id, :first_name, :last_name, :birth, :gender, :phone, :address, :city, :state, :zip_code, :license, :driver_license, :user_id, :speciality_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
