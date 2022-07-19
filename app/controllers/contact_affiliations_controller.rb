class ContactAffiliationsController < ApplicationController
  before_action :set_contact_affiliation, only: [:show, :update, :destroy]

  # GET /contact_affiliations
  def index
    @contact_affiliations = ContactAffiliation.all

    render json: @contact_affiliations
  end

  # GET /contact_affiliations/1
  def show
    render json: @contact_affiliation
  end

  # POST /contact_affiliations
  def create
    @contact_affiliation = ContactAffiliation.new(contact_affiliation_params)

    if @contact_affiliation.save
      render json: @contact_affiliation, status: :created, location: @contact_affiliation
    else
      render json: @contact_affiliation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contact_affiliations/1
  def update
    if @contact_affiliation.update(contact_affiliation_params)
      render json: @contact_affiliation
    else
      render json: @contact_affiliation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contact_affiliations/1
  def destroy
    @contact_affiliation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_affiliation
      @contact_affiliation = ContactAffiliation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_affiliation_params
      params.require(:contact_affiliation).permit(:organization_id, :contact_id, :created_by_id, :updated_by_id, :deleted_at)
    end
end
