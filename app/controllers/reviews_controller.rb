class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update, :destroy]
  before_action :authenticate_user! , only: [:create]

  # GET /reviews
  def index
    if params[:branch_id].present?
      @reviews = Review.get_all_branch_reviews(params[:branch_id]) 
    else
      @reviews = Review.get_all_organization_reviews(params[:organization_id])
    end
    
    render json: @reviews
  end

  # GET /reviews/1
  def show
    render json: @review
  end

  # POST /reviews
  def create
    
    @review = Review.new(user_id:current_user.id,organization_id: params[:organization_id],branch_id:params[:branch_id],feedback: params[:feedback],rating: params[:rating])

    if @review.save
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1
  def update
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  def destroy
    @review.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.get_review(params[:id]).first
    end

    # Only allow a trusted parameter "white list" through.
    def review_params
      params.require(:review).permit(:feedback,:organization_id,:branch_id,:rating)
    end
end
