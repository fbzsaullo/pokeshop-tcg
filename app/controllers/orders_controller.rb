class OrdersController < ApplicationController
  def create
    @card = Card.find(params[:card_id])
    @order = Order.new
    @order.user = current_user
    @order.card = @card
    @card.bought = true

    if @order.save
      @card.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:card_id)
  end
end
