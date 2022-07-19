class TruckingLogAttachmentsController < ApplicationController
  before_action :set_trucking_log_attachment, only: [:show, :update, :destroy]

  # GET /trucking_log_attachments
  def index
    @trucking_log_attachments = TruckingLogAttachment.all

    render json: @trucking_log_attachments
  end

  # GET /trucking_log_attachments/1
  def show
    render json: @trucking_log_attachment
  end

  # POST /trucking_log_attachments
  def create
    @trucking_log_attachment = TruckingLogAttachment.new(trucking_log_attachment_params)

    if @trucking_log_attachment.save
      render json: @trucking_log_attachment, status: :created, location: @trucking_log_attachment
    else
      render json: @trucking_log_attachment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trucking_log_attachments/1
  def update
    if @trucking_log_attachment.update(trucking_log_attachment_params)
      render json: @trucking_log_attachment
    else
      render json: @trucking_log_attachment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trucking_log_attachments/1
  def destroy
    @trucking_log_attachment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trucking_log_attachment
      @trucking_log_attachment = TruckingLogAttachment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trucking_log_attachment_params
      params.require(:trucking_log_attachment).permit(:attachment_id, :trucking_log_id, :deleted_at, :start_date)
    end
end
