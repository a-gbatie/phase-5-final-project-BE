class FriendRequestsController < ApplicationController
  before_action :set_friend_request, only: [:show, :update, :destroy]

  # GET /friend_requests
  def index
    @friend_requests = FriendRequest.all

    render json: @friend_requests
  end

  # GET /friend_requests/1
  def show
    render json: @friend_request
  end

  # POST /friend_requests
  def create
    @friend_request = FriendRequest.new(friend_request_params)

    if @friend_request.save
      render json: @friend_request, status: :created, location: @friend_request
    else
      render json: @friend_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /friend_requests/1
  def update
    if @friend_request.update(friend_request_params)
      render json: @friend_request
    else
      render json: @friend_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /friend_requests/1
  def destroy
    @friend_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend_request
      @friend_request = FriendRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friend_request_params
      params.require(:friend_request).permit(:requestor_id, :receiver_id)
    end
end
