class BillingRatesController < ApplicationController
  before_action :set_billing_rate, only: [:show, :update, :destroy]

  # GET /billing_rates
  def index
    @billing_rates = BillingRate.all

    render json: @billing_rates
  end

  # GET /billing_rates/1
  def show
    render json: @billing_rate
  end

  # POST /billing_rates
  def create
    @billing_rate = BillingRate.new(billing_rate_params)

    if @billing_rate.save
      render json: @billing_rate, status: :created, location: @billing_rate
    else
      render json: @billing_rate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /billing_rates/1
  def update
    if @billing_rate.update(billing_rate_params)
      render json: @billing_rate
    else
      render json: @billing_rate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /billing_rates/1
  def destroy
    @billing_rate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing_rate
      @billing_rate = BillingRate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def billing_rate_params
      params.require(:billing_rate).permit(:code, :name, :hour_rate, :first_five_hours_rate, :min_hours, :created_by_id, :updated_by_id, :is_industrial, :is_food_service, :payroll_code, :is_regular, :base_fee, :hour_pay_rate, :base_pay_rate, :override_mashgiach_pay_rate, :min_pay_hours)
    end
end
