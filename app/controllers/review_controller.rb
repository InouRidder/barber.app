class ReviewController < ApplicationController
  before_action :find_review, only: [:show, :new, :create, :edit, :update, :destroy]

  def show
  end

  def new
  end

  def create
    @review = Review.new(params_review)
    @review.save!
    redirect_to barbers_path
  end

  def edit
  end

  def update
    @review = Review.new(@review)
    @review.update
    redirect_to barbers_path
  end

  def destroy
    @review.destroy
    redirect_to barbers_path
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  def params_review
    params.require(:reviews).permit(:rating, :description)
  end

end
