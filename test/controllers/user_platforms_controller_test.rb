require "test_helper"

class UserPlatformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_platform = user_platforms(:one)
  end

  test "should get index" do
    get user_platforms_url, as: :json
    assert_response :success
  end

  test "should create user_platform" do
    assert_difference('UserPlatform.count') do
      post user_platforms_url, params: { user_platform: { platform_id: @user_platform.platform_id, user_id: @user_platform.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_platform" do
    get user_platform_url(@user_platform), as: :json
    assert_response :success
  end

  test "should update user_platform" do
    patch user_platform_url(@user_platform), params: { user_platform: { platform_id: @user_platform.platform_id, user_id: @user_platform.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_platform" do
    assert_difference('UserPlatform.count', -1) do
      delete user_platform_url(@user_platform), as: :json
    end

    assert_response 204
  end
end
