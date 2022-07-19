class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :update, :destroy]

  # GET /organizations
  def index
    @organizations = Organization.all

    render json: @organizations
  end

  # GET /organizations/1
  def show
    render json: @organization
  end

  # POST /organizations
  def create
    @organization = Organization.new(organization_params)

    if @organization.save
      render json: @organization, status: :created, location: @organization
    else
      render json: @organization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organizations/1
  def update
    if @organization.update(organization_params)
      render json: @organization
    else
      render json: @organization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /organizations/1
  def destroy
    @organization.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_params
      params.require(:organization).permit(:type, :legacy_id, :data_source, :deleted_at, :name, :comments, :is_passover, :is_challa, :is_shabbos_yom_tov, :is_jewish_owned, :is_in_web, :alias, :is_active, :loc_comment, :storage_loc_comment, :legal_name, :is_in_directory, :date_code_format, :is_all_kosher, :is_private_label, :is_batch, :inspection_frequency, :technical_profile, :contract_anniversary_date, :product_loc_date, :private_label_loc_date, :billing_code, :address_id, :telcom_id, :inspector_id, :coordinator_id, :company_id, :certified_at, :created_by_id, :updated_by_id, :area_code, :name_without_line_breaks, :other_certifiers, :email_notification, :alternate_inspector_id, :keywords, :reliability, :reviewed_by_id, :logo_filename, :logo_content_type, :logo_binary_data, :formulas_complete_at, :cancel_reason, :ukd_code, :bill_rule, :bill_amount, :inspection_contact_id, :industry, :ingredients_location, :red_flag_items, :non_kosher_ingredients, :bulk_ingredients, :pas_bishul_yisroel_procedures, :challa_procedures, :steam_condensate_issue, :dairy_pareve_segregation, :non_certified_items, :fresh_vegetables, :automatic_koshering, :cleaning_in_place, :seating, :cuisine, :product_code_is_public, :lock_box_number, :contacts_reviewed_at, :web_description, :application_state, :online_payment, :link_to_article, :incorporated_under_the_laws_of, :is_certified_for_food_production, :is_certified_for_food_packaging, :is_certified_for_private_labels, :is_certified_for_batches, :annual_fee, :business_contact_id, :additional_profile_question_1, :additional_profile_question_2, :additional_profile_question_3, :additional_profile_question_4, :additional_profile_question_5, :disable_question_schedule_a, :disable_question_schedule_b, :disable_question_labels, :disable_question_batch_sheets, :disable_question_master_formula_cards, :disable_question_process_flow, :disable_question_changes_found, :billing_address_id, :mailing_address_id, :billing_address_type, :mailing_address_type, :account_manager_id, :alternate_inspection_contact_id, :passover_on_label, :is_access_permitted, :release_pending, :certifier_number, :loc_sharing_allowed, :opening_question_1, :opening_question_2, :opening_question_3, :opening_question_4, :opening_question_5, :midday_question_1, :midday_question_2, :midday_question_3, :midday_question_4, :midday_question_5, :closing_question_1, :closing_question_2, :closing_question_3, :closing_question_4, :closing_question_5, :found_seals_intact, :disable_found_seals_intact, :sealed_all_areas, :disable_sealed_all_areas, :pas_bishul_setup, :disable_pas_bishul_setup, :disable_produce_checking, :disable_pas_bishul_yisroel_procedures, :checked_existing_ingredients, :disable_checked_existing_ingredients, :supplies_needed, :disable_supplies_needed, :is_quasi_food_service, :signing_not_required, :qa_contact_id, :serves_meat, :meat_comments, :serves_dairy, :dairy_comments, :serves_pareve, :pareve_comments, :plant_that_serves_food, :location_description, :is_copacker, :external_email_for_inspections, :non_kosher_products, :main_contact_id, :average_daily_mixes)
    end
end
