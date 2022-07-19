require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { contact_id: @user.contact_id, created_by_id: @user.created_by_id, crypted_password: @user.crypted_password, deleted_at: @user.deleted_at, email: @user.email, eula_accepted_at: @user.eula_accepted_at, is_confirmation_required: @user.is_confirmation_required, is_password_change_required: @user.is_password_change_required, login: @user.login, read_only: @user.read_only, remember_token: @user.remember_token, remember_token_expires_at: @user.remember_token_expires_at, roles: @user.roles, salt: @user.salt, signature_id: @user.signature_id, updated_by_id: @user.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { contact_id: @user.contact_id, created_by_id: @user.created_by_id, crypted_password: @user.crypted_password, deleted_at: @user.deleted_at, email: @user.email, eula_accepted_at: @user.eula_accepted_at, is_confirmation_required: @user.is_confirmation_required, is_password_change_required: @user.is_password_change_required, login: @user.login, read_only: @user.read_only, remember_token: @user.remember_token, remember_token_expires_at: @user.remember_token_expires_at, roles: @user.roles, salt: @user.salt, signature_id: @user.signature_id, updated_by_id: @user.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
