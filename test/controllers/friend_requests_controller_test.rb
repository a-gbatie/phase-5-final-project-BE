require "test_helper"

class FriendRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friend_request = friend_requests(:one)
  end

  test "should get index" do
    get friend_requests_url, as: :json
    assert_response :success
  end

  test "should create friend_request" do
    assert_difference('FriendRequest.count') do
      post friend_requests_url, params: { friend_request: { receiver_id: @friend_request.receiver_id, requestor_id: @friend_request.requestor_id } }, as: :json
    end

    assert_response 201
  end

  test "should show friend_request" do
    get friend_request_url(@friend_request), as: :json
    assert_response :success
  end

  test "should update friend_request" do
    patch friend_request_url(@friend_request), params: { friend_request: { receiver_id: @friend_request.receiver_id, requestor_id: @friend_request.requestor_id } }, as: :json
    assert_response 200
  end

  test "should destroy friend_request" do
    assert_difference('FriendRequest.count', -1) do
      delete friend_request_url(@friend_request), as: :json
    end

    assert_response 204
  end
end