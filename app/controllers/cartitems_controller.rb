class CartitemsController < ApplicationController
    def new
        @cartitem = Cartitem.new(product_id: params[:product_id])
    end
    def create
        cart = Cartitem.new(
            product_id: params[:cartitem][:product_id],
            cart_id: current_cart.id,
            qty: params[:cartitem][:qty] )
        cart.save
        redirect_to root_path
    end
end
