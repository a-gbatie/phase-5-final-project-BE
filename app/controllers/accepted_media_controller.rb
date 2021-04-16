class AcceptedMediaController < ApplicationController
  before_action :set_accepted_medium, only: [:show, :update, :destroy]

  # GET /accepted_media
  def index
    @accepted_media = AcceptedMedium.all

    render json: @accepted_media
  end

  # GET /accepted_media/1
  def show
    render json: @accepted_medium
  end

  # POST /accepted_media
  def create
    @accepted_medium = AcceptedMedium.new(accepted_medium_params)
    byebug

    if @accepted_medium.save
      render json: @accepted_medium, status: :created, location: @accepted_medium
    else
      render json: @accepted_medium.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /accepted_media/1
  def update
    if @accepted_medium.update(accepted_medium_params)
      render json: @accepted_medium
    else
      render json: @accepted_medium.errors, status: :unprocessable_entity
    end
  end

  # DELETE /accepted_media/1
  def destroy
    @accepted_medium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accepted_medium
      @accepted_medium = AcceptedMedium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accepted_medium_params
      params.require(:accepted_medium).permit(:user_id, :medium_id)
    end
end
