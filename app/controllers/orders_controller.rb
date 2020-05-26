class OrdersController < ApplicationController

    def index
        @orders = Order.all
    end

    def new
        @order = Order.new
    end

    def create
        @order = Order.create(order_params)
        redirect_to order_path(@order)
    end

    def edit

    end

    def update

    end

    def show
        @order = Order.find(params[:id])
    end

    def destroy
        @order = Order.find(params[:id])
        @order.destroy
        redirect_to new_order_path
    end

    private

    def order_params
        params.require(:order).permit(:customer_id, :sushi_id)
    end
end
