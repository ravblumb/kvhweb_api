class FailedLoginsController < ApplicationController
  before_action :set_failed_login, only: [:show, :update, :destroy]

  # GET /failed_logins
  def index
    @failed_logins = FailedLogin.all

    render json: @failed_logins
  end

  # GET /failed_logins/1
  def show
    render json: @failed_login
  end

  # POST /failed_logins
  def create
    @failed_login = FailedLogin.new(failed_login_params)

    if @failed_login.save
      render json: @failed_login, status: :created, location: @failed_login
    else
      render json: @failed_login.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /failed_logins/1
  def update
    if @failed_login.update(failed_login_params)
      render json: @failed_login
    else
      render json: @failed_login.errors, status: :unprocessable_entity
    end
  end

  # DELETE /failed_logins/1
  def destroy
    @failed_login.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_failed_login
      @failed_login = FailedLogin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def failed_login_params
      params.require(:failed_login).permit(:login, :ip)
    end
end
