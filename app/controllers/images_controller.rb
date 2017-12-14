class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :update, :destroy]

  # GET /images
  def index
    if params[:room_id].present?
      @images = Image.get_all_room_images(params[:room_id])
    elsif params[:organization_id].present?
      @images = Image.get_all_organization_images(params[:organization_id]) 
    elsif params[:event_id].present?
      @images = Image.get_all_event_images(params[:event_id])
    else
      @images = Image.get_all_workshop_images(params[:workshop_id])
    end

    render json: @images
  end

  # GET /images/1
  def show
    render json: @image
  end

  # POST /images
  def create
    @image = Image.new(image_params)

    if @image.save
      head :ok
    else
      render json: @image.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /images/1
  def update
    if @image.update(image_params)
      render json: @image
    else
      render json: @image.errors, status: :unprocessable_entity
    end
  end

  # DELETE /images/1
  def destroy
    @image.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.get_image(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def image_params
      params.require(:image).permit(:image_url, :description, :room_id, :workshop_id, :event_id, :organization_id)
    end
end
