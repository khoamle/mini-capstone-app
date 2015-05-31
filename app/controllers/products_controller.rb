class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def single
  end
end
