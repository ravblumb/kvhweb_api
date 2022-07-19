require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url, as: :json
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { approved_at: @product.approved_at, brand_id: @product.brand_id, cancel_reason: @product.cancel_reason, cancelled_at: @product.cancelled_at, certificate_id: @product.certificate_id, certifier_id: @product.certifier_id, code: @product.code, comments: @product.comments, conditions: @product.conditions, created_by_id: @product.created_by_id, data_source: @product.data_source, date_code_format: @product.date_code_format, deleted_at: @product.deleted_at, dr_code: @product.dr_code, dr_details: @product.dr_details, expires_at: @product.expires_at, external_id: @product.external_id, formula_complete_at: @product.formula_complete_at, is_active_denorm: @product.is_active_denorm, is_batch: @product.is_batch, is_bishul_yisroel: @product.is_bishul_yisroel, is_cholov_yisroel: @product.is_cholov_yisroel, is_dairy: @product.is_dairy, is_dairy_equipment: @product.is_dairy_equipment, is_duplicate_denorm: @product.is_duplicate_denorm, is_fish: @product.is_fish, is_formula: @product.is_formula, is_meat: @product.is_meat, is_pas_yisroel: @product.is_pas_yisroel, is_passover: @product.is_passover, is_private_label_override: @product.is_private_label_override, is_service: @product.is_service, is_yoshon: @product.is_yoshon, keywords: @product.keywords, kosher_compact_denorm: @product.kosher_compact_denorm, kosher_group: @product.kosher_group, kosher_status: @product.kosher_status, last_reviewed_at: @product.last_reviewed_at, loc_status_denorm: @product.loc_status_denorm, material_hauled: @product.material_hauled, name: @product.name, not_on_certifier_web_site: @product.not_on_certifier_web_site, notebook_id: @product.notebook_id, other_certifiers: @product.other_certifiers, other_producers: @product.other_producers, packaging_style: @product.packaging_style, passover_symbol: @product.passover_symbol, previous_id: @product.previous_id, previous_state: @product.previous_state, previous_state_changed_by_id: @product.previous_state_changed_by_id, previous_state_time: @product.previous_state_time, producer_id: @product.producer_id, producer_name_denorm: @product.producer_name_denorm, product_category: @product.product_category, product_group_id: @product.product_group_id, production_line_id: @product.production_line_id, replaced_by_id: @product.replaced_by_id, retail_or_commercial: @product.retail_or_commercial, security_level: @product.security_level, sizes: @product.sizes, state: @product.state, state_changed_by_id: @product.state_changed_by_id, state_time: @product.state_time, symbol: @product.symbol, ukd_dairy_pareve_meat: @product.ukd_dairy_pareve_meat, ukd_id: @product.ukd_id, ukd_other_status: @product.ukd_other_status, upc_code: @product.upc_code, updated_by_id: @product.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show product" do
    get product_url(@product), as: :json
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { approved_at: @product.approved_at, brand_id: @product.brand_id, cancel_reason: @product.cancel_reason, cancelled_at: @product.cancelled_at, certificate_id: @product.certificate_id, certifier_id: @product.certifier_id, code: @product.code, comments: @product.comments, conditions: @product.conditions, created_by_id: @product.created_by_id, data_source: @product.data_source, date_code_format: @product.date_code_format, deleted_at: @product.deleted_at, dr_code: @product.dr_code, dr_details: @product.dr_details, expires_at: @product.expires_at, external_id: @product.external_id, formula_complete_at: @product.formula_complete_at, is_active_denorm: @product.is_active_denorm, is_batch: @product.is_batch, is_bishul_yisroel: @product.is_bishul_yisroel, is_cholov_yisroel: @product.is_cholov_yisroel, is_dairy: @product.is_dairy, is_dairy_equipment: @product.is_dairy_equipment, is_duplicate_denorm: @product.is_duplicate_denorm, is_fish: @product.is_fish, is_formula: @product.is_formula, is_meat: @product.is_meat, is_pas_yisroel: @product.is_pas_yisroel, is_passover: @product.is_passover, is_private_label_override: @product.is_private_label_override, is_service: @product.is_service, is_yoshon: @product.is_yoshon, keywords: @product.keywords, kosher_compact_denorm: @product.kosher_compact_denorm, kosher_group: @product.kosher_group, kosher_status: @product.kosher_status, last_reviewed_at: @product.last_reviewed_at, loc_status_denorm: @product.loc_status_denorm, material_hauled: @product.material_hauled, name: @product.name, not_on_certifier_web_site: @product.not_on_certifier_web_site, notebook_id: @product.notebook_id, other_certifiers: @product.other_certifiers, other_producers: @product.other_producers, packaging_style: @product.packaging_style, passover_symbol: @product.passover_symbol, previous_id: @product.previous_id, previous_state: @product.previous_state, previous_state_changed_by_id: @product.previous_state_changed_by_id, previous_state_time: @product.previous_state_time, producer_id: @product.producer_id, producer_name_denorm: @product.producer_name_denorm, product_category: @product.product_category, product_group_id: @product.product_group_id, production_line_id: @product.production_line_id, replaced_by_id: @product.replaced_by_id, retail_or_commercial: @product.retail_or_commercial, security_level: @product.security_level, sizes: @product.sizes, state: @product.state, state_changed_by_id: @product.state_changed_by_id, state_time: @product.state_time, symbol: @product.symbol, ukd_dairy_pareve_meat: @product.ukd_dairy_pareve_meat, ukd_id: @product.ukd_id, ukd_other_status: @product.ukd_other_status, upc_code: @product.upc_code, updated_by_id: @product.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product), as: :json
    end

    assert_response 204
  end
end
