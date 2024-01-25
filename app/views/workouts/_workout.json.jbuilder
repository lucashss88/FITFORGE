json.extract! workout, :id, :title, :description, :user_id, :date, :created_at, :updated_at
json.url workout_url(workout, format: :json)
