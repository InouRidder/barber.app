class ProfileController < ApplicationController
before_action :find_user

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_user
    @user = current_user
  end
end
