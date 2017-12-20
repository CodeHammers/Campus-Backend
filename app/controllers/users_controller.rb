class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    if params[:fuck_off]=="yes"
      @users = User.all

    else
      @users = User.get_user_in_org(params[:org_id])
    end
    render json: @users
  end



  # GET /users/1
  def show
    render json: @user 
  end

  # POST /users
  def create

      @user = User.new(email: params[:email],password:params[:pd],name:params[:name],image:params[:image],nickname: params[:nickname])
     if  @user.save
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(password: params[:pd])
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:email,:pd , :password, :nickname,:image ,:name)
    end
end
