class BatchAttachmentsController < ApplicationController
  before_action :set_batch_attachment, only: [:show, :update, :destroy]

  # GET /batch_attachments
  def index
    @batch_attachments = BatchAttachment.all

    render json: @batch_attachments
  end

  # GET /batch_attachments/1
  def show
    render json: @batch_attachment
  end

  # POST /batch_attachments
  def create
    @batch_attachment = BatchAttachment.new(batch_attachment_params)

    if @batch_attachment.save
      render json: @batch_attachment, status: :created, location: @batch_attachment
    else
      render json: @batch_attachment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /batch_attachments/1
  def update
    if @batch_attachment.update(batch_attachment_params)
      render json: @batch_attachment
    else
      render json: @batch_attachment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /batch_attachments/1
  def destroy
    @batch_attachment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batch_attachment
      @batch_attachment = BatchAttachment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def batch_attachment_params
      params.require(:batch_attachment).permit(:batch_id, :attachment_id, :deleted_at)
    end
end
