class OwnerController < ApplicationController
  def index
    @owners = Owner.order(:name)
  end

  def show
    @owner = Owner.find(params[:id])
  end
end
