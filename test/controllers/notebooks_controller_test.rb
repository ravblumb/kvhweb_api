require "test_helper"

class NotebooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notebook = notebooks(:one)
  end

  test "should get index" do
    get notebooks_url, as: :json
    assert_response :success
  end

  test "should create notebook" do
    assert_difference('Notebook.count') do
      post notebooks_url, params: { notebook: { company_id: @notebook.company_id, created_by_id: @notebook.created_by_id, updated_by_id: @notebook.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show notebook" do
    get notebook_url(@notebook), as: :json
    assert_response :success
  end

  test "should update notebook" do
    patch notebook_url(@notebook), params: { notebook: { company_id: @notebook.company_id, created_by_id: @notebook.created_by_id, updated_by_id: @notebook.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy notebook" do
    assert_difference('Notebook.count', -1) do
      delete notebook_url(@notebook), as: :json
    end

    assert_response 204
  end
end
