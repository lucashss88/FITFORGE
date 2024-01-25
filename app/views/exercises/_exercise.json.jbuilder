json.extract! exercise, :id, :name, :description, :sets, :reps, :created_at, :updated_at
json.url exercise_url(exercise, format: :json)
