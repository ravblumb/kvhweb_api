class ProductCertificationLettersController < ApplicationController
  before_action :set_product_certification_letter, only: [:show, :update, :destroy]

  # GET /product_certification_letters
  def index
    @product_certification_letters = ProductCertificationLetter.all

    render json: @product_certification_letters
  end

  # GET /product_certification_letters/1
  def show
    render json: @product_certification_letter
  end

  # POST /product_certification_letters
  def create
    @product_certification_letter = ProductCertificationLetter.new(product_certification_letter_params)

    if @product_certification_letter.save
      render json: @product_certification_letter, status: :created, location: @product_certification_letter
    else
      render json: @product_certification_letter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_certification_letters/1
  def update
    if @product_certification_letter.update(product_certification_letter_params)
      render json: @product_certification_letter
    else
      render json: @product_certification_letter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_certification_letters/1
  def destroy
    @product_certification_letter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_certification_letter
      @product_certification_letter = ProductCertificationLetter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_certification_letter_params
      params.require(:product_certification_letter).permit(:product_id, :certification_letter_id, :deleted_at)
    end
end
