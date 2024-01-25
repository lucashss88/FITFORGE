json.extract! exercise_session, :id, :workout_id, :exercise_id, :completed_sets, :completed_reps, :weight, :duration, :created_at, :updated_at
json.url exercise_session_url(exercise_session, format: :json)
