class OrganizationAttachmentsController < ApplicationController
  before_action :set_organization_attachment, only: [:show, :update, :destroy]

  # GET /organization_attachments
  def index
    @organization_attachments = OrganizationAttachment.all

    render json: @organization_attachments
  end

  # GET /organization_attachments/1
  def show
    render json: @organization_attachment
  end

  # POST /organization_attachments
  def create
    @organization_attachment = OrganizationAttachment.new(organization_attachment_params)

    if @organization_attachment.save
      render json: @organization_attachment, status: :created, location: @organization_attachment
    else
      render json: @organization_attachment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organization_attachments/1
  def update
    if @organization_attachment.update(organization_attachment_params)
      render json: @organization_attachment
    else
      render json: @organization_attachment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /organization_attachments/1
  def destroy
    @organization_attachment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_attachment
      @organization_attachment = OrganizationAttachment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_attachment_params
      params.require(:organization_attachment).permit(:organization_id, :attachment_id, :deleted_at)
    end
end
