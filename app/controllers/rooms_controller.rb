class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  
  # GET /rooms
  def index
    @branch_rooms = Room.get_all_rooms(params[:branch_id])
    
    render json: @branch_rooms
  end

  # GET /rooms/1
  def show
    render json: @room
  end

  # POST /rooms
  def create
    @room = Room.new(room_params)

    if @room.save
      render json: @room, status: :created, location: @room
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rooms/1
  def update
    if @room.update(room_params)
      render json: @room
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rooms/1
  def destroy
    @room.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.get_room(params[:id], params[:branch_id])
    end

    # Only allow a trusted parameter "white list" through.
    def room_params
      params.require(:room).permit(:price,:capacity)
    end
end
