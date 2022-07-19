class FailedLoginIpsController < ApplicationController
  before_action :set_failed_login_ip, only: [:show, :update, :destroy]

  # GET /failed_login_ips
  def index
    @failed_login_ips = FailedLoginIp.all

    render json: @failed_login_ips
  end

  # GET /failed_login_ips/1
  def show
    render json: @failed_login_ip
  end

  # POST /failed_login_ips
  def create
    @failed_login_ip = FailedLoginIp.new(failed_login_ip_params)

    if @failed_login_ip.save
      render json: @failed_login_ip, status: :created, location: @failed_login_ip
    else
      render json: @failed_login_ip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /failed_login_ips/1
  def update
    if @failed_login_ip.update(failed_login_ip_params)
      render json: @failed_login_ip
    else
      render json: @failed_login_ip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /failed_login_ips/1
  def destroy
    @failed_login_ip.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_failed_login_ip
      @failed_login_ip = FailedLoginIp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def failed_login_ip_params
      params.require(:failed_login_ip).permit(:ip)
    end
end
