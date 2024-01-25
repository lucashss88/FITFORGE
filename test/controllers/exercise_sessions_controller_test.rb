require "test_helper"

class ExerciseSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exercise_session = exercise_sessions(:one)
  end

  test "should get index" do
    get exercise_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_exercise_session_url
    assert_response :success
  end

  test "should create exercise_session" do
    assert_difference("ExerciseSession.count") do
      post exercise_sessions_url, params: { exercise_session: { completed_reps: @exercise_session.completed_reps, completed_sets: @exercise_session.completed_sets, duration: @exercise_session.duration, exercise_id: @exercise_session.exercise_id, weight: @exercise_session.weight, workout_id: @exercise_session.workout_id } }
    end

    assert_redirected_to exercise_session_url(ExerciseSession.last)
  end

  test "should show exercise_session" do
    get exercise_session_url(@exercise_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_exercise_session_url(@exercise_session)
    assert_response :success
  end

  test "should update exercise_session" do
    patch exercise_session_url(@exercise_session), params: { exercise_session: { completed_reps: @exercise_session.completed_reps, completed_sets: @exercise_session.completed_sets, duration: @exercise_session.duration, exercise_id: @exercise_session.exercise_id, weight: @exercise_session.weight, workout_id: @exercise_session.workout_id } }
    assert_redirected_to exercise_session_url(@exercise_session)
  end

  test "should destroy exercise_session" do
    assert_difference("ExerciseSession.count", -1) do
      delete exercise_session_url(@exercise_session)
    end

    assert_redirected_to exercise_sessions_url
  end
end
