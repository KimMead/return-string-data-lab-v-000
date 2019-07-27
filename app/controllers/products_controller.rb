class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
  end

  def new
   @product = Product.new
  end

  def create
   @product = Product.create(product_params)
   @product.save
   redirect_to products_path
  end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end
end
