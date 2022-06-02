class OrdersController < ApplicationController

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def show

  end

  private

  def order_params
    params.require(:order).permit(:user_id, :card_id)
  end
end
