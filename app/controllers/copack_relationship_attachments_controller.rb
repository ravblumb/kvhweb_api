class CopackRelationshipAttachmentsController < ApplicationController
  before_action :set_copack_relationship_attachment, only: [:show, :update, :destroy]

  # GET /copack_relationship_attachments
  def index
    @copack_relationship_attachments = CopackRelationshipAttachment.all

    render json: @copack_relationship_attachments
  end

  # GET /copack_relationship_attachments/1
  def show
    render json: @copack_relationship_attachment
  end

  # POST /copack_relationship_attachments
  def create
    @copack_relationship_attachment = CopackRelationshipAttachment.new(copack_relationship_attachment_params)

    if @copack_relationship_attachment.save
      render json: @copack_relationship_attachment, status: :created, location: @copack_relationship_attachment
    else
      render json: @copack_relationship_attachment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /copack_relationship_attachments/1
  def update
    if @copack_relationship_attachment.update(copack_relationship_attachment_params)
      render json: @copack_relationship_attachment
    else
      render json: @copack_relationship_attachment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /copack_relationship_attachments/1
  def destroy
    @copack_relationship_attachment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_copack_relationship_attachment
      @copack_relationship_attachment = CopackRelationshipAttachment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def copack_relationship_attachment_params
      params.require(:copack_relationship_attachment).permit(:attachment_id, :copack_relationship_id, :deleted_at)
    end
end
