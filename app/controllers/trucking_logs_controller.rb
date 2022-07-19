class TruckingLogsController < ApplicationController
  before_action :set_trucking_log, only: [:show, :update, :destroy]

  # GET /trucking_logs
  def index
    @trucking_logs = TruckingLog.all

    render json: @trucking_logs
  end

  # GET /trucking_logs/1
  def show
    render json: @trucking_log
  end

  # POST /trucking_logs
  def create
    @trucking_log = TruckingLog.new(trucking_log_params)

    if @trucking_log.save
      render json: @trucking_log, status: :created, location: @trucking_log
    else
      render json: @trucking_log.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trucking_logs/1
  def update
    if @trucking_log.update(trucking_log_params)
      render json: @trucking_log
    else
      render json: @trucking_log.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trucking_logs/1
  def destroy
    @trucking_log.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trucking_log
      @trucking_log = TruckingLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trucking_log_params
      params.require(:trucking_log).permit(:start_date, :end_date, :comments, :organization_id, :created_by_id, :updated_by_id, :deleted_at)
    end
end
