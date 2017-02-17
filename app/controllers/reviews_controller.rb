class ReviewsController < ApplicationController
  before_filter :authorize

  def create
    @product = Product.find params[:product_id]
    @review = Review.new(product: @product, rating: params[:review][:rating], comment: params[:review][:comment])
    @review.user = current_user
    @review.save!
    if @review.valid?
      redirect_to product_path(@product), notice: 'Your Review has been accepted.'
    else
      redirect_to product_path(@product), notice: reviews.errors.full_messages.first
    end
  end

  def destroy

  end

end
