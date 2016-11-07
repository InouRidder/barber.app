class BarbersController < ApplicationController

  before_action :find_barber

  def index
    @barbers = Barber.all
  end

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

  def find_barber
    @barber = Barber.find(params[:id])
  end


end
