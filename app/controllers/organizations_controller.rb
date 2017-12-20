class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :update, :destroy,:index_secure]
    
  # GET /organizations
  def index
    if params[:name].nil?  
      @organizations = Organization.get_all_organizations()
    else
      @organizations = Organization.organization_by_part_of_name(params[:name])
    end 

    render json: @organizations
  end

  def rating
    @rating = Review.get_org_rating(params[:organization_id])

    render json: @rating
  end

  def index_secure
    @managed_orgnizations =  Position.get_positons_organization(current_user.id)
    
    render json: @managed_orgnizations
  end

  # GET /organizations/1
  def show
    render json: @organization
  end

  # POST /organizations
  def create
    @organization = Organization.new(organization_params)
    
    
    if @organization.save 
      Position.create(user_id:current_user.id, organization_id:@organization.id, title:"owner")

      render json: @organization
    else
      render json: @organization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organizations/1
  def update
    if @organization.update(organization_params)
      render json: @organization
    else
      render json: @organization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /organizations/1
  def destroy
    @organization.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.get_organization(params[:id]).first
    end

    # Only allow a trusted parameter "white list" through.
    def organization_params
      params.require(:organization).permit(:name, :description, :university, :logo, :address, :phone, :email, :event_schedule)
    end
end
