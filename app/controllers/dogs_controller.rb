class DogsController < ApplicationController
  def index
    @dogs = Dog.order(:name).page params[:page]
  end

  def show
    @dog = Dog.find(params[:id])
  end
end
