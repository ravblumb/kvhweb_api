class UkdImportRetriesController < ApplicationController
  before_action :set_ukd_import_retry, only: [:show, :update, :destroy]

  # GET /ukd_import_retries
  def index
    @ukd_import_retries = UkdImportRetry.all

    render json: @ukd_import_retries
  end

  # GET /ukd_import_retries/1
  def show
    render json: @ukd_import_retry
  end

  # POST /ukd_import_retries
  def create
    @ukd_import_retry = UkdImportRetry.new(ukd_import_retry_params)

    if @ukd_import_retry.save
      render json: @ukd_import_retry, status: :created, location: @ukd_import_retry
    else
      render json: @ukd_import_retry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ukd_import_retries/1
  def update
    if @ukd_import_retry.update(ukd_import_retry_params)
      render json: @ukd_import_retry
    else
      render json: @ukd_import_retry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ukd_import_retries/1
  def destroy
    @ukd_import_retry.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ukd_import_retry
      @ukd_import_retry = UkdImportRetry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ukd_import_retry_params
      params.require(:ukd_import_retry).permit(:agency_name, :file_name, :import_type, :retries_left)
    end
end
