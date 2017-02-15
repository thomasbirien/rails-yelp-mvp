class ReviewsController < ApplicationController
  before_action :find_restaurant_id
  def index
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review =  Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to @restaurant

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def find_restaurant_id
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
