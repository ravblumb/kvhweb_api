class IngredientAttachmentsController < ApplicationController
  before_action :set_ingredient_attachment, only: [:show, :update, :destroy]

  # GET /ingredient_attachments
  def index
    @ingredient_attachments = IngredientAttachment.all

    render json: @ingredient_attachments
  end

  # GET /ingredient_attachments/1
  def show
    render json: @ingredient_attachment
  end

  # POST /ingredient_attachments
  def create
    @ingredient_attachment = IngredientAttachment.new(ingredient_attachment_params)

    if @ingredient_attachment.save
      render json: @ingredient_attachment, status: :created, location: @ingredient_attachment
    else
      render json: @ingredient_attachment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingredient_attachments/1
  def update
    if @ingredient_attachment.update(ingredient_attachment_params)
      render json: @ingredient_attachment
    else
      render json: @ingredient_attachment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredient_attachments/1
  def destroy
    @ingredient_attachment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_attachment
      @ingredient_attachment = IngredientAttachment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingredient_attachment_params
      params.require(:ingredient_attachment).permit(:ingredient_id, :attachment_id, :deleted_at)
    end
end
