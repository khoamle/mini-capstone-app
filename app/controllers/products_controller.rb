class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new
  end

  def create
    @product = Product.create(name: params[:name], price: params[:price], image: params[:image], description: params[:description])
    flash[:success] = "Product sucessfully created!"
    redirect_to "/products/#{@product.id}"
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(name: params[:name], price: params[:price], image: params[:image], description: params[:description])
    flash[:success] = "Product successfully updated!"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    flash[:warning] = "Product successfully deleted!"
    redirect_to "/products"
  end
end
