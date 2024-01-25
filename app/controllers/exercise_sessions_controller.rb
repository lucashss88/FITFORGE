class ExerciseSessionsController < ApplicationController
  before_action :set_exercise_session, only: %i[ show edit update destroy ]

  # GET /exercise_sessions or /exercise_sessions.json
  def index
    @exercise_sessions = ExerciseSession.all
  end

  # GET /exercise_sessions/1 or /exercise_sessions/1.json
  def show
  end

  # GET /exercise_sessions/new
  def new
    @exercise_session = ExerciseSession.new
  end

  # GET /exercise_sessions/1/edit
  def edit
  end

  # POST /exercise_sessions or /exercise_sessions.json
  def create
    @exercise_session = ExerciseSession.new(exercise_session_params)

    respond_to do |format|
      if @exercise_session.save
        format.html { redirect_to exercise_session_url(@exercise_session), notice: "Exercise session was successfully created." }
        format.json { render :show, status: :created, location: @exercise_session }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exercise_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_sessions/1 or /exercise_sessions/1.json
  def update
    respond_to do |format|
      if @exercise_session.update(exercise_session_params)
        format.html { redirect_to exercise_session_url(@exercise_session), notice: "Exercise session was successfully updated." }
        format.json { render :show, status: :ok, location: @exercise_session }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exercise_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_sessions/1 or /exercise_sessions/1.json
  def destroy
    @exercise_session.destroy

    respond_to do |format|
      format.html { redirect_to exercise_sessions_url, notice: "Exercise session was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_session
      @exercise_session = ExerciseSession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exercise_session_params
      params.require(:exercise_session).permit(:workout_id, :exercise_id, :completed_sets, :completed_reps, :weight, :duration)
    end
end
