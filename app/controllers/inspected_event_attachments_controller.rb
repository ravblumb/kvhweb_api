class InspectedEventAttachmentsController < ApplicationController
  before_action :set_inspected_event_attachment, only: [:show, :update, :destroy]

  # GET /inspected_event_attachments
  def index
    @inspected_event_attachments = InspectedEventAttachment.all

    render json: @inspected_event_attachments
  end

  # GET /inspected_event_attachments/1
  def show
    render json: @inspected_event_attachment
  end

  # POST /inspected_event_attachments
  def create
    @inspected_event_attachment = InspectedEventAttachment.new(inspected_event_attachment_params)

    if @inspected_event_attachment.save
      render json: @inspected_event_attachment, status: :created, location: @inspected_event_attachment
    else
      render json: @inspected_event_attachment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inspected_event_attachments/1
  def update
    if @inspected_event_attachment.update(inspected_event_attachment_params)
      render json: @inspected_event_attachment
    else
      render json: @inspected_event_attachment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inspected_event_attachments/1
  def destroy
    @inspected_event_attachment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspected_event_attachment
      @inspected_event_attachment = InspectedEventAttachment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inspected_event_attachment_params
      params.require(:inspected_event_attachment).permit(:inspected_event_id, :attachment_id, :deleted_at)
    end
end
