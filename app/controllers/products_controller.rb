class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /products
  def index
    @products = Product.all

    render json: @products
  end

  # GET /products/1
  def show
    render json: @product
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :comments, :security_level, :retail_or_commercial, :other_producers, :other_certifiers, :date_code_format, :sizes, :packaging_style, :code, :is_batch, :ukd_id, :is_dairy, :is_dairy_equipment, :is_meat, :is_fish, :is_pas_yisroel, :is_cholov_yisroel, :is_bishul_yisroel, :is_yoshon, :is_passover, :conditions, :approved_at, :expires_at, :cancelled_at, :cancel_reason, :symbol, :passover_symbol, :ukd_dairy_pareve_meat, :ukd_other_status, :kosher_status, :kosher_group, :producer_id, :certifier_id, :is_service, :data_source, :is_private_label_override, :deleted_at, :brand_id, :product_group_id, :is_active_denorm, :is_duplicate_denorm, :producer_name_denorm, :previous_id, :created_by_id, :updated_by_id, :formula_complete_at, :is_formula, :loc_status_denorm, :keywords, :kosher_compact_denorm, :notebook_id, :state, :state_time, :last_reviewed_at, :production_line_id, :state_changed_by_id, :previous_state, :previous_state_time, :previous_state_changed_by_id, :replaced_by_id, :not_on_certifier_web_site, :material_hauled, :product_category, :external_id, :upc_code, :certificate_id, :dr_code, :dr_details)
    end
end
