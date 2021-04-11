class UserPlatformsController < ApplicationController
  before_action :set_user_platform, only: [:show, :update, :destroy]

  # GET /user_platforms
  def index
    @user_platforms = UserPlatform.all

    render json: @user_platforms
  end

  # GET /user_platforms/1
  def show
    render json: @user_platform
  end

  # POST /user_platforms
  def create
    @user_platform = UserPlatform.new(user_platform_params)

    if @user_platform.save
      render json: @user_platform, status: :created, location: @user_platform
    else
      render json: @user_platform.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_platforms/1
  def update
    if @user_platform.update(user_platform_params)
      render json: @user_platform
    else
      render json: @user_platform.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_platforms/1
  def destroy
    @user_platform.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_platform
      @user_platform = UserPlatform.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_platform_params
      params.require(:user_platform).permit(:user_id, :platform_id)
    end
end
