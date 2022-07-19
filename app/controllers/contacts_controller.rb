class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :update, :destroy]

  # GET /contacts
  def index
    @contacts = Contact.all

    render json: @contacts
  end

  # GET /contacts/1
  def show
    render json: @contact
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      render json: @contact, status: :created, location: @contact
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contacts/1
  def update
    if @contact.update(contact_params)
      render json: @contact
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contacts/1
  def destroy
    @contact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:type, :first_name, :last_name, :salutation, :position, :comments, :telcom_id, :organization_id, :legacy_id, :deleted_at, :email_contact, :created_by_id, :updated_by_id, :email_notification, :pay_rate, :address_id, :inspector_type, :location_area, :is_invoicing, :data_source, :entered_by_company_id, :out_of_the_office_until, :map_marker_colour, :payroll_code, :is_inactive)
    end
end
