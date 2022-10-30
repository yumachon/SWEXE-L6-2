class CartitemsController < ApplicationController
  def new
    @cartitem = Cartitem.new(product_id: params[:product_id])
    @product = Product.find(params[:product_id])
  end
  def create
    @cart = Cartitem.new(product_id: params[:cartitem][:product_id],cart_id: current_cart.id,qty: params[:cartitem][:qty])
    @cart.save
    redirect_to root_path
  end
  def show
      @cartitem = Cartitem.all
      @product = Product.all
      #@qty = params[:cartitem][:qty]
      @product_id = params[:product_id]
      @cart = current_cart
  end
  def destroy
    @cartitem = Cartitem.find(params[:id])
    if @cartitem.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
end