class ProductionLinesController < ApplicationController
  before_action :set_production_line, only: [:show, :update, :destroy]

  # GET /production_lines
  def index
    @production_lines = ProductionLine.all

    render json: @production_lines
  end

  # GET /production_lines/1
  def show
    render json: @production_line
  end

  # POST /production_lines
  def create
    @production_line = ProductionLine.new(production_line_params)

    if @production_line.save
      render json: @production_line, status: :created, location: @production_line
    else
      render json: @production_line.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /production_lines/1
  def update
    if @production_line.update(production_line_params)
      render json: @production_line
    else
      render json: @production_line.errors, status: :unprocessable_entity
    end
  end

  # DELETE /production_lines/1
  def destroy
    @production_line.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_line
      @production_line = ProductionLine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def production_line_params
      params.require(:production_line).permit(:plant_id, :name, :description, :created_by_id, :updated_by_id, :deleted_at, :dairy_status)
    end
end
