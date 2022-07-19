class InspectionsController < ApplicationController
  before_action :set_inspection, only: [:show, :update, :destroy]

  # GET /inspections
  def index
    @inspections = Inspection.all

    render json: @inspections
  end

  # GET /inspections/1
  def show
    render json: @inspection
  end

  # POST /inspections
  def create
    @inspection = Inspection.new(inspection_params)

    if @inspection.save
      render json: @inspection, status: :created, location: @inspection
    else
      render json: @inspection.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inspections/1
  def update
    if @inspection.update(inspection_params)
      render json: @inspection
    else
      render json: @inspection.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inspections/1
  def destroy
    @inspection.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspection
      @inspection = Inspection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inspection_params
      params.require(:inspection).permit(:organization_id, :inspector_id, :date, :pay_type, :duration, :kilometers, :flat_fee, :expenses, :comments, :created_by_id, :updated_by_id, :ingredients_checked, :red_flag_items_checked, :non_kosher_ingredients_checked, :bulk_ingredients_checked, :products_checked, :labels_checked, :batch_sheets_checked, :master_formula_cards_checked, :process_flow_checked, :non_certified_items_checked, :pas_bishul_yisroel_procedures_checked, :challa_procedures_checked, :steam_condensate_issue_checked, :dairy_pareve_segregation_checked, :fresh_vegetables_checked, :automatic_koshering_checked, :cleaning_in_place_checked, :changes_found, :kashruth_comments, :travel_duration, :pay_calculation, :pay_formula, :pay_override, :km_pay_calculation, :km_pay_formula, :km_pay_override, :bill_calculation, :bill_formula, :bill_override, :inspected_event_date_id, :start_time, :end_time, :status, :type, :submitted_at, :rc_approved_at, :admin_approved_at, :accounting_approved_at, :paid_at, :billed_at, :submitted_by_id, :rc_approved_by_id, :admin_approved_by_id, :accounting_approved_by_id, :paid_by_id, :billed_by_id, :data_source, :legacy_id, :is_food_service, :contact_info_checked, :billing_rate_override, :holiday_multiplier, :expenses_paid_by_agency, :signature_name, :signature_at, :signature_json, :private_comments, :additional_profile_question_1_checked, :additional_profile_question_2_checked, :additional_profile_question_3_checked, :additional_profile_question_4_checked, :additional_profile_question_5_checked, :deleted_at, :kashruth_admin_approved_at, :kashruth_admin_approved_by_id, :date_original, :duration_original, :travel_duration_original, :kilometers_original, :pay_type_original, :expenses_original, :expenses_paid_by_agency_original, :flat_fee_original, :holiday_multiplier_original, :comments_original, :payment_comments, :additional_charges, :inspector_approved_at, :inspector_approved_by_id, :shift_supervised, :reply_to_opening_question_1, :reply_to_opening_question_2, :reply_to_opening_question_3, :reply_to_opening_question_4, :reply_to_opening_question_5, :reply_to_midday_question_1, :reply_to_midday_question_2, :reply_to_midday_question_3, :reply_to_midday_question_4, :reply_to_midday_question_5, :reply_to_closing_question_1, :reply_to_closing_question_2, :reply_to_closing_question_3, :reply_to_closing_question_4, :reply_to_closing_question_5, :reply_to_found_seals_intact, :reply_to_sealed_all_areas, :reply_to_pas_bishul_setup, :reply_to_checked_existing_ingredients, :reply_to_supplies_needed, :met_with_organization_contact_id, :reply_to_parent_organization_profile_question_1, :reply_to_parent_organization_profile_question_2, :reply_to_parent_organization_profile_question_3, :reply_to_parent_organization_profile_question_4, :reply_to_parent_organization_profile_question_5, :required_fields_filled, :external_email_sent)
    end
end
