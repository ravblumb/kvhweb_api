class IssueAttachmentsController < ApplicationController
  before_action :set_issue_attachment, only: [:show, :update, :destroy]

  # GET /issue_attachments
  def index
    @issue_attachments = IssueAttachment.all

    render json: @issue_attachments
  end

  # GET /issue_attachments/1
  def show
    render json: @issue_attachment
  end

  # POST /issue_attachments
  def create
    @issue_attachment = IssueAttachment.new(issue_attachment_params)

    if @issue_attachment.save
      render json: @issue_attachment, status: :created, location: @issue_attachment
    else
      render json: @issue_attachment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /issue_attachments/1
  def update
    if @issue_attachment.update(issue_attachment_params)
      render json: @issue_attachment
    else
      render json: @issue_attachment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /issue_attachments/1
  def destroy
    @issue_attachment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue_attachment
      @issue_attachment = IssueAttachment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def issue_attachment_params
      params.require(:issue_attachment).permit(:issue_id, :attachment_id, :deleted_at)
    end
end
