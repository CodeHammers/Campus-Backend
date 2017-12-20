class WorkspacesController < ApplicationController
  before_action :set_workspace, only: [:show, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :update, :destroy,:index_secure]
  
  # GET /workspaces
  def index
    if params[:name].nil? 
       @workspaces = Workspace.get_all_workspaces()
    else
       @workspaces = Workspace.workspace_by_part_of_name(params[:name])
    end 

    render json: @workspaces
  end

  def branches
    @branches = Branch.get_number_branch(params[:workspace_id])
    render json: @branches
  end

  def rooms
    @rooms = Branch.get_number_room(params[:workspace_id])
    render json: @rooms
  end

  def index_secure
    @managed_workspaces =  Position.get_positons_workspace(current_user.id)
    render json: @managed_workspaces
  end

  # GET /workspaces/1
  def show
    render json: @workspace
  end

  # POST /workspaces
  def create
    @workspace = Workspace.new(workspace_params)
    
    if @workspace.save 
      Position.create(user_id:current_user.id, workspace_id: @workspace.id, title:"owner")
      
      render json: @workspace
    else
      render json: @workspace.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workspaces/1
  def update
    if @workspace.update(workspace_params)
      render json: @workspace
    else
      render json: @workspace.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workspaces/1
  def destroy
    @workspace.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workspace
      @workspace = Workspace.get_workspace(params[:id]).first
    end

    # Only allow a trusted parameter "white list" through.
    def workspace_params
      params.require(:workspace).permit(:name, :about, :logo)
    end
end
