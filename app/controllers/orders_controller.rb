class OrdersController < ApplicationController

  def create
    if current_user
      quantity = params[:quantity].to_i
      price = Product.find_by(id: params[:product_id]).price

      @order = Order.new(quantity: params[:quantity], product_id: @product_id, user_id: current_user.id)
      @order.subtotal = @order.calculate_subtotal(price)
      @order.tax = @order.calculate_tax(price)
      @order.total = @order.calculate_total(price)

      @order.save
      redirect_to "/orders/#{@order.id}"
    else
      redirect_to "/users/sign_in"
    end
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
