class ParamsController < ApplicationController
  before_action :set_param, only: [:show, :update, :destroy]

  # GET /params
  def index
    @params = Param.all

    render json: @params
  end

  # GET /params/1
  def show
    render json: @param
  end

  # POST /params
  def create
    @param = Param.new(param_params)

    if @param.save
      render json: @param, status: :created, location: @param
    else
      render json: @param.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /params/1
  def update
    if @param.update(param_params)
      render json: @param
    else
      render json: @param.errors, status: :unprocessable_entity
    end
  end

  # DELETE /params/1
  def destroy
    @param.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_param
      @param = Param.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def param_params
      params.require(:param).permit(:key, :value, :created_by_id, :updated_by_id)
    end
end
