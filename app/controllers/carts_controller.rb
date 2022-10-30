class CartsController < ApplicationController
    def show
        @cart = Cart.find(params[:id])
        @total = @cart.total
    end
end
