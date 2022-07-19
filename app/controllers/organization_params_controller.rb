class OrganizationParamsController < ApplicationController
  before_action :set_organization_param, only: [:show, :update, :destroy]

  # GET /organization_params
  def index
    @organization_params = OrganizationParam.all

    render json: @organization_params
  end

  # GET /organization_params/1
  def show
    render json: @organization_param
  end

  # POST /organization_params
  def create
    @organization_param = OrganizationParam.new(organization_param_params)

    if @organization_param.save
      render json: @organization_param, status: :created, location: @organization_param
    else
      render json: @organization_param.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organization_params/1
  def update
    if @organization_param.update(organization_param_params)
      render json: @organization_param
    else
      render json: @organization_param.errors, status: :unprocessable_entity
    end
  end

  # DELETE /organization_params/1
  def destroy
    @organization_param.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_param
      @organization_param = OrganizationParam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_param_params
      params.require(:organization_param).permit(:organization_id, :key, :value, :created_by_id, :updated_by_id)
    end
end
