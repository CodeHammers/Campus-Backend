class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: [:show, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :show, :update, :destroy] 

  # GET /subscriptions
  def index
    if params[:organization_id].present?
      @subscriptions = Subscribe.get_all_subscriptions_org(params[:organization_id])
    else
      @subscriptions = Subscribe.get_all_subscriptions_user(current_user.id)
    end

    render json: @subscriptions
  end

  # GET /subscriptions/1
  def show
    render json: @subscription
  end

  # POST /subscriptions
  def create
    @subscription = Subscribe.new(subscription_params)

    if @subscription.save
      render json: @subscription, status: :created, location: @subscription
    else
      render json: @subscription.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subscriptions/1
  def update
    if @subscription.update(subscription_params)
      render json: @subscription
    else
      render json: @subscription.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subscriptions/1
  def destroy
    @subscription.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscription
      @subscription = Subscribe.get_subscription(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def subscription_params
      params.fetch(:subscription, {})
    end
end
