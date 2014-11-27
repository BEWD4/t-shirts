class ShirtsController < ApplicationController
  def index
    @shirts = Tshirt.all
  end

  def search
    @search = params[:q]
    @shirt = Tshirt.where(  "name LIKE ?", "%#{@search}%" ).first
    @no_results = !@shirt
  end
end
