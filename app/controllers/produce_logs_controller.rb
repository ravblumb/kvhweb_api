class ProduceLogsController < ApplicationController
  before_action :set_produce_log, only: [:show, :update, :destroy]

  # GET /produce_logs
  def index
    @produce_logs = ProduceLog.all

    render json: @produce_logs
  end

  # GET /produce_logs/1
  def show
    render json: @produce_log
  end

  # POST /produce_logs
  def create
    @produce_log = ProduceLog.new(produce_log_params)

    if @produce_log.save
      render json: @produce_log, status: :created, location: @produce_log
    else
      render json: @produce_log.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /produce_logs/1
  def update
    if @produce_log.update(produce_log_params)
      render json: @produce_log
    else
      render json: @produce_log.errors, status: :unprocessable_entity
    end
  end

  # DELETE /produce_logs/1
  def destroy
    @produce_log.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produce_log
      @produce_log = ProduceLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def produce_log_params
      params.require(:produce_log).permit(:date, :time, :organization_id, :created_by_id, :updated_by_id, :deleted_at, :inspection_id, :produce_id, :bugs_found, :washes, :pass, :comments, :quantity, :infestation_level)
    end
end
