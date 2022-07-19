class CertificationLettersController < ApplicationController
  before_action :set_certification_letter, only: [:show, :update, :destroy]

  # GET /certification_letters
  def index
    @certification_letters = CertificationLetter.all

    render json: @certification_letters
  end

  # GET /certification_letters/1
  def show
    render json: @certification_letter
  end

  # POST /certification_letters
  def create
    @certification_letter = CertificationLetter.new(certification_letter_params)

    if @certification_letter.save
      render json: @certification_letter, status: :created, location: @certification_letter
    else
      render json: @certification_letter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /certification_letters/1
  def update
    if @certification_letter.update(certification_letter_params)
      render json: @certification_letter
    else
      render json: @certification_letter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /certification_letters/1
  def destroy
    @certification_letter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certification_letter
      @certification_letter = CertificationLetter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def certification_letter_params
      params.require(:certification_letter).permit(:file_name, :content_type, :comments, :is_batch, :is_passover, :issued_at, :expires_at, :conditions, :symbol, :passover_symbol, :kosher_group, :company_id, :producer_id, :certifier_id, :deleted_at, :created_by_id, :updated_by_id, :file_uploaded, :data_source, :file_digest)
    end
end
