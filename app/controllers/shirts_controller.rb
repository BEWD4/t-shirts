class ShirtsController < ApplicationController
  def index
    @shirts = Tshirt.all
  end

  def search
    @search = params[:q]
    @shirt = Tshirt.search(@search)
    @no_results = !@shirt
  end
end
