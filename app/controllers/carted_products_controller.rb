class CartedProductsController < ApplicationController
  def index
    @carted_products = current_user.carted_products.where(status: "carted")
  end


  def create
    if current_user
      @carted_product = CartedProduct.create(user_id: current_user.id, product_id: params[:product_id], quantity: params[:quantity], status: "carted")
      redirect_to "/carted_products"
    else
      redirect_to :new_user_session
    end
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.update(status: "Removed")
    flash[:warning] = "Carted Products successfully deleted!"
    redirect_to :carted_products
  end
end
