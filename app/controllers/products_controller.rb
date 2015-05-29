class ProductsController < ApplicationController
  def all
    @products = Product.all
  end
  def single
  end
end
