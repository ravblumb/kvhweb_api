class InspectedEventsController < ApplicationController
  before_action :set_inspected_event, only: [:show, :update, :destroy]

  # GET /inspected_events
  def index
    @inspected_events = InspectedEvent.all

    render json: @inspected_events
  end

  # GET /inspected_events/1
  def show
    render json: @inspected_event
  end

  # POST /inspected_events
  def create
    @inspected_event = InspectedEvent.new(inspected_event_params)

    if @inspected_event.save
      render json: @inspected_event, status: :created, location: @inspected_event
    else
      render json: @inspected_event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inspected_events/1
  def update
    if @inspected_event.update(inspected_event_params)
      render json: @inspected_event
    else
      render json: @inspected_event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inspected_events/1
  def destroy
    @inspected_event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspected_event
      @inspected_event = InspectedEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inspected_event_params
      params.require(:inspected_event).permit(:organization_id, :venue_id, :alt_venue_name, :alt_venue_address_id, :event_date, :event_time, :event_title, :people_count, :is_kitchen_on_different_floor, :is_non_kosher_kitchen, :kosher_location, :non_kosher_location, :is_kashering_required, :kashering_required, :is_renting, :rental_equipment, :rental_supplier, :is_wine, :is_liquor, :is_candy, :is_other_supplies, :other_supplies, :is_sushi, :is_cotton_candy, :is_popcorn, :is_hotdogs, :is_cappuccino, :is_other_3rd_party_equipment, :other_3rd_party_equipment, :is_party_planner, :setup_time, :kitchen_open_time, :kitchen_close_time, :dishwashing_end_time, :mashgiach_request_time, :mashgiach_preference, :received_at, :comments, :requires_administrator_attention, :event_status, :replaced_inspector_id, :notebook_id, :created_by_id, :updated_by_id, :deleted_at, :type, :signed_at, :legacy_id, :billed_at, :billed_by_id, :is_staff_meal, :is_confidential, :reviewed_at)
    end
end
