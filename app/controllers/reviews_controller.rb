class ReviewsController < ApplicationController

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = Review.where(restaurant: @restaurant)
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@review.restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
