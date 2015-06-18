class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show, :search]

  def index
    @products = Product.all
    if params[:sort] && params[:sort_order]
      @products = Product.order(params[:sort] => params[:sort_order])
    end
    if params[:discount]
      @products = Product.where("price < ?", 2)
    end
    if params[:category]
      @products = Category.find_by(name: params[:category]).products
    end
  end

  def show
    if params[:id] == "random"
      products = Product.all
      @product = products.sample
    else
      @product = Product.find_by(id: params[:id])
    end
  end

  def new
  end

  def create
    @product = Product.create(name: params[:name], price: params[:price],description: params[:description])
    ProductImage.create(product_id: @product.id, image_url: params[:image_1])
    ProductImage.create(product_id: @product.id, image_url: params[:image_2])
    flash[:success] = "Product sucessfully created!"
    redirect_to "/products/#{@product.id}"
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(name: params[:name], price: params[:price], description: params[:description])
    ProductImage.update(product_id: @product.id, image_url: params[:image_1])
    ProductImage.update(product_id: @product.id, image_url: params[:image_2])
    flash[:success] = "Product successfully updated!"
    redirect_to "/products/#{@product.id}"

  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    flash[:warning] = "Product successfully deleted!"
    redirect_to "/products"
  end
  def search 
    search_term = params[:search]
    @products = Product.where("name LIKE ? or price LIKE ? or image LIKE ? or description LIKE ?", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%")
    render :index
  end

end
