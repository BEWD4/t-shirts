class ShirtsController < ApplicationController
  def index
    @shirts = Tshirt.all
  end

  def search
    @search = params[:q]
    # @shirt = Tshirt.all.find { |shirt| shirt.name.downcase.include? @search }
    @shirt = Tshirt.where(  "name LIKE ?", "%#{@search}%" ).first
  end
end
