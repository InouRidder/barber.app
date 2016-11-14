class ReviewsController < ApplicationController
  before_action :find_review, only: [:show, :edit, :update, :destroy]
  before_action :find_barber, :find_user, only: [:create, :new, :show, :edit, :update, :destroy]

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params_review)
    @review.barber = @barber
    @review.user = @user
    @review.save!
    redirect_to barber_path(@barber)
  end

  def edit
  end

  def update
    @review.barber = @barber
    @review.user = @user
    @review.update(params_review)
    redirect_to barber_path(@barber)
  end

  def destroy
    @review.destroy
    redirect_to barber_path(@barber)
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  def find_user
    @user = current_user
  end

  def find_barber
    @barber = Barber.find(params[:barber_id])
  end

  def params_review
    params.require(:review).permit(:rating, :description, :photo, :photo_cache)
  end
end
