class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :update, :destroy]
  #before_action :authenticate_user!, only: [:create, :update, :destroy]
  
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

    @room["branch_id"] = params[:branch_id]


    if @room.save
      render json @room
    else
      pp @room.errors
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
      @room = Room.get_room(params[:id], params[:branch_id]).first
    end

    # Only allow a trusted parameter "white list" through.
    def room_params
      params.require(:room).permit(:price, :capacity, :availability, :services)
    end
end
