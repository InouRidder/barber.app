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

  def find_user
    #ALERT VERANDER
    @user = User.find(params[:id])
  end

  def find_barber
    @barber = Barber.find(params[:barber_id])
  end

  def params_review
    params.require(:review).permit(:rating, :description)
  end
end
