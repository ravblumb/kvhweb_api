class GeneratedCertificatesController < ApplicationController
  before_action :set_generated_certificate, only: [:show, :update, :destroy]

  # GET /generated_certificates
  def index
    @generated_certificates = GeneratedCertificate.all

    render json: @generated_certificates
  end

  # GET /generated_certificates/1
  def show
    render json: @generated_certificate
  end

  # POST /generated_certificates
  def create
    @generated_certificate = GeneratedCertificate.new(generated_certificate_params)

    if @generated_certificate.save
      render json: @generated_certificate, status: :created, location: @generated_certificate
    else
      render json: @generated_certificate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /generated_certificates/1
  def update
    if @generated_certificate.update(generated_certificate_params)
      render json: @generated_certificate
    else
      render json: @generated_certificate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /generated_certificates/1
  def destroy
    @generated_certificate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generated_certificate
      @generated_certificate = GeneratedCertificate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def generated_certificate_params
      params.require(:generated_certificate).permit(:certificate_id, :company_id, :security_level, :product_ids, :parameters, :created_by_id, :updated_by_id)
    end
end
