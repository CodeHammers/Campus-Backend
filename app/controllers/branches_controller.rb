class BranchesController < ApplicationController
  before_action :set_branch, only: [:show, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  
  # GET /branches
  def index
    @branches = Branch.get_all_branches(params[:workspace_id])

    render json: @branches
  end

  def index_secure
    @managed_branches =  Position.get_positons_branch(current_user.user_id)
    render json: @managed_branches
  end
  
  # GET /branches/1
  def show
    render json: @branch
  end

  # POST /branches
  def create
    @branch = Branch.new(branch_params)
    @branch.workspace_id = params[:workspace_id]
    
    if @branch.save
      @position = Position.new(user_id:current_user.id, organizaion_id:@branch.id, title:"owner")    
      render json: @branch
    else
      render json: @branch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /branches/1
  def update
    if @branch.update(branch_params)
      render json: @branch
    else
      render json: @branch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /branches/1
  def destroy
    @branch.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_branch
      @branch = Branch.get_branch(params[:id], params[:workspace_id]).first
    end

    # Only allow a trusted parameter "white list" through.
    def branch_params
      params.require(:branch).permit(:number_of_rooms, :services, :address, :phone, :email, :photos)
    end
end
