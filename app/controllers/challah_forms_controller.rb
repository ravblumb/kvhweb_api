class ChallahFormsController < ApplicationController
  before_action :set_challah_form, only: [:show, :update, :destroy]

  # GET /challah_forms
  def index
    @challah_forms = ChallahForm.all

    render json: @challah_forms
  end

  # GET /challah_forms/1
  def show
    render json: @challah_form
  end

  # POST /challah_forms
  def create
    @challah_form = ChallahForm.new(challah_form_params)

    if @challah_form.save
      render json: @challah_form, status: :created, location: @challah_form
    else
      render json: @challah_form.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /challah_forms/1
  def update
    if @challah_form.update(challah_form_params)
      render json: @challah_form
    else
      render json: @challah_form.errors, status: :unprocessable_entity
    end
  end

  # DELETE /challah_forms/1
  def destroy
    @challah_form.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challah_form
      @challah_form = ChallahForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def challah_form_params
      params.require(:challah_form).permit(:date, :inspection_id, :placed_by_id, :tevel_type, :matzo_used, :matzo_purchased, :tevel_weight, :mixes_per_day, :baking_days_per_week, :mixes_per_week, :created_by_id, :updated_by_id, :deleted_at, :organization_id, :weight_per_box)
    end
end
