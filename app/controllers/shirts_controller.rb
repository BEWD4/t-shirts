class ShirtsController < ApplicationController
  def index
    @shirts = Tshirt.all
  end
end
