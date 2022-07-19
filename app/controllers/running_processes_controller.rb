class RunningProcessesController < ApplicationController
  before_action :set_running_process, only: [:show, :update, :destroy]

  # GET /running_processes
  def index
    @running_processes = RunningProcess.all

    render json: @running_processes
  end

  # GET /running_processes/1
  def show
    render json: @running_process
  end

  # POST /running_processes
  def create
    @running_process = RunningProcess.new(running_process_params)

    if @running_process.save
      render json: @running_process, status: :created, location: @running_process
    else
      render json: @running_process.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /running_processes/1
  def update
    if @running_process.update(running_process_params)
      render json: @running_process
    else
      render json: @running_process.errors, status: :unprocessable_entity
    end
  end

  # DELETE /running_processes/1
  def destroy
    @running_process.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_running_process
      @running_process = RunningProcess.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def running_process_params
      params.require(:running_process).permit(:start, :pid, :session_id, :url, :info)
    end
end
