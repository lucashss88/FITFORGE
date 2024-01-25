require "application_system_test_case"

class ExerciseSessionsTest < ApplicationSystemTestCase
  setup do
    @exercise_session = exercise_sessions(:one)
  end

  test "visiting the index" do
    visit exercise_sessions_url
    assert_selector "h1", text: "Exercise sessions"
  end

  test "should create exercise session" do
    visit exercise_sessions_url
    click_on "New exercise session"

    fill_in "Completed reps", with: @exercise_session.completed_reps
    fill_in "Completed sets", with: @exercise_session.completed_sets
    fill_in "Duration", with: @exercise_session.duration
    fill_in "Exercise", with: @exercise_session.exercise_id
    fill_in "Weight", with: @exercise_session.weight
    fill_in "Workout", with: @exercise_session.workout_id
    click_on "Create Exercise session"

    assert_text "Exercise session was successfully created"
    click_on "Back"
  end

  test "should update Exercise session" do
    visit exercise_session_url(@exercise_session)
    click_on "Edit this exercise session", match: :first

    fill_in "Completed reps", with: @exercise_session.completed_reps
    fill_in "Completed sets", with: @exercise_session.completed_sets
    fill_in "Duration", with: @exercise_session.duration
    fill_in "Exercise", with: @exercise_session.exercise_id
    fill_in "Weight", with: @exercise_session.weight
    fill_in "Workout", with: @exercise_session.workout_id
    click_on "Update Exercise session"

    assert_text "Exercise session was successfully updated"
    click_on "Back"
  end

  test "should destroy Exercise session" do
    visit exercise_session_url(@exercise_session)
    click_on "Destroy this exercise session", match: :first

    assert_text "Exercise session was successfully destroyed"
  end
end
