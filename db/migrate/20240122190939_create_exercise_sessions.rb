class CreateExerciseSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_sessions do |t|
      t.references :workout, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true
      t.integer :completed_sets
      t.integer :completed_reps
      t.float :weight
      t.integer :duration

      t.timestamps
    end
  end
end
