require "test_helper"

class AcceptedMediaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accepted_medium = accepted_media(:one)
  end

  test "should get index" do
    get accepted_media_url, as: :json
    assert_response :success
  end

  test "should create accepted_medium" do
    assert_difference('AcceptedMedium.count') do
      post accepted_media_url, params: { accepted_medium: { media_id: @accepted_medium.media_id, user_id: @accepted_medium.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show accepted_medium" do
    get accepted_medium_url(@accepted_medium), as: :json
    assert_response :success
  end

  test "should update accepted_medium" do
    patch accepted_medium_url(@accepted_medium), params: { accepted_medium: { media_id: @accepted_medium.media_id, user_id: @accepted_medium.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy accepted_medium" do
    assert_difference('AcceptedMedium.count', -1) do
      delete accepted_medium_url(@accepted_medium), as: :json
    end

    assert_response 204
  end
end
