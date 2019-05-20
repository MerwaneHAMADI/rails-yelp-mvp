class ReviewsController < ApplicationController

  def index
    @restaurant = Restaurant.find_by_id(params[:restaurant_id])
  end
  def new
    @review = Review.new
    @restaurant = Restaurant.find_by_id(params[:restaurant_id])
    @review.restaurant = @restaurant
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find_by_id(params[:restaurant_id])
    if @review.save
    redirect_to restaurant_path(@review.restaurant)
    else
      render :new
    end
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
