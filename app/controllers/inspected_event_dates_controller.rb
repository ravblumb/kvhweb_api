class InspectedEventDatesController < ApplicationController
  before_action :set_inspected_event_date, only: [:show, :update, :destroy]

  # GET /inspected_event_dates
  def index
    @inspected_event_dates = InspectedEventDate.all

    render json: @inspected_event_dates
  end

  # GET /inspected_event_dates/1
  def show
    render json: @inspected_event_date
  end

  # POST /inspected_event_dates
  def create
    @inspected_event_date = InspectedEventDate.new(inspected_event_date_params)

    if @inspected_event_date.save
      render json: @inspected_event_date, status: :created, location: @inspected_event_date
    else
      render json: @inspected_event_date.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inspected_event_dates/1
  def update
    if @inspected_event_date.update(inspected_event_date_params)
      render json: @inspected_event_date
    else
      render json: @inspected_event_date.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inspected_event_dates/1
  def destroy
    @inspected_event_date.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspected_event_date
      @inspected_event_date = InspectedEventDate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inspected_event_date_params
      params.require(:inspected_event_date).permit(:inspected_event_id, :date, :start_time, :end_time, :inspector_count, :event_type, :event_status, :comments, :created_by_id, :updated_by_id, :deleted_at, :legacy_id, :organization_id)
    end
end
