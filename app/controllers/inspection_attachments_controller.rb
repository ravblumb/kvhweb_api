class InspectionAttachmentsController < ApplicationController
  before_action :set_inspection_attachment, only: [:show, :update, :destroy]

  # GET /inspection_attachments
  def index
    @inspection_attachments = InspectionAttachment.all

    render json: @inspection_attachments
  end

  # GET /inspection_attachments/1
  def show
    render json: @inspection_attachment
  end

  # POST /inspection_attachments
  def create
    @inspection_attachment = InspectionAttachment.new(inspection_attachment_params)

    if @inspection_attachment.save
      render json: @inspection_attachment, status: :created, location: @inspection_attachment
    else
      render json: @inspection_attachment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inspection_attachments/1
  def update
    if @inspection_attachment.update(inspection_attachment_params)
      render json: @inspection_attachment
    else
      render json: @inspection_attachment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inspection_attachments/1
  def destroy
    @inspection_attachment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspection_attachment
      @inspection_attachment = InspectionAttachment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inspection_attachment_params
      params.require(:inspection_attachment).permit(:inspection_id, :attachment_id, :deleted_at)
    end
end
