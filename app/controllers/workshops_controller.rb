class WorkshopsController < ApplicationController
  before_action :set_workshop, only: [:show, :update, :destroy]

  # GET /workshops
  def index
    if params[:branch_id].present? and params[:organization_id].present?
      @workshops = Workshop.workshops_by_branch_and_organization(params[:branch_id], params[:organization_id])
    elsif params[:branch_id].present?
      @workshops = Workshop.workshops_host_at_Branch(params[:branch_id])
    else
      @workshops = Workshop.workshops_made_by_organziation(params[:organization_id])
    end

    render json: @workshops
  end

  # GET /workshops/1
  def show
    render json: @workshop
  end

  # POST /workshops
  def create
    @workshop = Workshop.new(workshop_params) 
    @workshop.organization_id = params[:organization_id]
    if @workshop.save
      render json: @workshop
    else
      render json: @workshop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workshops/1
  def update
    if @workshop.update(workshop_params)
      render json: @workshop
    else
      render json: @workshop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workshops/1
  def destroy
    @workshop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workshop
      @workshop = Workshop.get_workshop(params[:id]).first
    end

    # Only allow a trusted parameter "white list" through.
    def workshop_params
      params.require(:workshop).permit(:title, :description, :date, :time,:branch_id,:organization_id)
    end
end
