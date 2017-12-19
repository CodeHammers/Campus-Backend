class PositionsController < ApplicationController
  before_action :set_position, only: [:show, :update, :destroy]

  before_action :authenticate_user! , only:  [:grant_acess_to_org]

  # GET /positions
  def index
    @positions = Position.all

    render json: @positions
  end

  # GET /positions/1
  def show
    render json: @position 
  end

  def grant_acess_to_org
     @pos = Position.new(organization_id:params[:organization_id],user_id:current_user.id,title:"manager")
    if @pos.save
      render json: @pos
    else
      render json: @position.errors, status: :unprocessable_entity
    end
  end

  # POST /positions
  def create
    @position = Position.new(position_params)

    if @position.save
      render json: @position
    else
      render json: @position.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /positions/1
  def update
    if @position.update(position_params)
      render json: @position
    else
      render json: @position.errors, status: :unprocessable_entity
    end
  end

  # DELETE /positions/1
  def destroy
    @position.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position
      @position = Position.get_position(params[:id]).first
    end

    # Only allow a trusted parameter "white list" through.
    def position_params
      params.require(:position).permit(:salary, :start_time, :title)
    end
end
