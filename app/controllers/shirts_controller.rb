class ShirtsController < ApplicationController
  def index
    @shirts = Tshirt.order('id DESC').all
  end

  def search
    @search = params[:q]
    @shirt = Tshirt.search(@search)
    @no_results = !@shirt
  end

  def new
    @shirt = Tshirt.new
  end

  def create
    @shirt = Tshirt.new(parameters)
    if @shirt.valid?
      @shirt.save
      flash[:info] = 'Yay! T-shirt created'
      return redirect_to root_path
    end

    flash[:error] = "You has errorz"
  end

  private
  def parameters
    params.require(:tshirt).permit(:name, :description)
  end
end
