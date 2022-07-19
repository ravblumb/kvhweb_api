class TelcomsController < ApplicationController
  before_action :set_telcom, only: [:show, :update, :destroy]

  # GET /telcoms
  def index
    @telcoms = Telcom.all

    render json: @telcoms
  end

  # GET /telcoms/1
  def show
    render json: @telcom
  end

  # POST /telcoms
  def create
    @telcom = Telcom.new(telcom_params)

    if @telcom.save
      render json: @telcom, status: :created, location: @telcom
    else
      render json: @telcom.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /telcoms/1
  def update
    if @telcom.update(telcom_params)
      render json: @telcom
    else
      render json: @telcom.errors, status: :unprocessable_entity
    end
  end

  # DELETE /telcoms/1
  def destroy
    @telcom.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telcom
      @telcom = Telcom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def telcom_params
      params.require(:telcom).permit(:phone, :fax, :email, :mobile, :web_site, :deleted_at, :created_by_id, :updated_by_id)
    end
end
