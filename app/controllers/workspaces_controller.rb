class WorkspacesController < ApplicationController
  before_action :set_workspace, only: [:show, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  
  # GET /workspaces
  def index
    if params[:name].nil? 
       @workspaces = Workspace.get_all_workspaces()
    else
       @workspaces = Workspace.workspace_by_part_of_name(params[:name])
    end 

    render json: @workspaces
  end

  # GET /workspaces/1
  def show
    render json: @workspace
  end

  # POST /workspaces
  def create
    @workspace = Workspace.new(workspace_params)

    if @workspace.save
      render json: @workspace, status: :created, location: @workspace
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
      @workspace = Workspace.get_workspace(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def workspace_params
      params.require(:workspace).permit(:name, :about)
    end
end
