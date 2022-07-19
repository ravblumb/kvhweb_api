require "test_helper"

class ProductCertificationLettersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_certification_letter = product_certification_letters(:one)
  end

  test "should get index" do
    get product_certification_letters_url, as: :json
    assert_response :success
  end

  test "should create product_certification_letter" do
    assert_difference('ProductCertificationLetter.count') do
      post product_certification_letters_url, params: { product_certification_letter: { certification_letter_id: @product_certification_letter.certification_letter_id, deleted_at: @product_certification_letter.deleted_at, product_id: @product_certification_letter.product_id } }, as: :json
    end

    assert_response 201
  end

  test "should show product_certification_letter" do
    get product_certification_letter_url(@product_certification_letter), as: :json
    assert_response :success
  end

  test "should update product_certification_letter" do
    patch product_certification_letter_url(@product_certification_letter), params: { product_certification_letter: { certification_letter_id: @product_certification_letter.certification_letter_id, deleted_at: @product_certification_letter.deleted_at, product_id: @product_certification_letter.product_id } }, as: :json
    assert_response 200
  end

  test "should destroy product_certification_letter" do
    assert_difference('ProductCertificationLetter.count', -1) do
      delete product_certification_letter_url(@product_certification_letter), as: :json
    end

    assert_response 204
  end
end
