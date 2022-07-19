class ProductAttachmentsController < ApplicationController
  before_action :set_product_attachment, only: [:show, :update, :destroy]

  # GET /product_attachments
  def index
    @product_attachments = ProductAttachment.all

    render json: @product_attachments
  end

  # GET /product_attachments/1
  def show
    render json: @product_attachment
  end

  # POST /product_attachments
  def create
    @product_attachment = ProductAttachment.new(product_attachment_params)

    if @product_attachment.save
      render json: @product_attachment, status: :created, location: @product_attachment
    else
      render json: @product_attachment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_attachments/1
  def update
    if @product_attachment.update(product_attachment_params)
      render json: @product_attachment
    else
      render json: @product_attachment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_attachments/1
  def destroy
    @product_attachment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_attachment
      @product_attachment = ProductAttachment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_attachment_params
      params.require(:product_attachment).permit(:product_id, :attachment_id, :deleted_at)
    end
end
