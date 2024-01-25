class Exercise < ApplicationRecord
  has_many :exercise_sessions
  has_many :workouts, through: :exercise_sessions
end
