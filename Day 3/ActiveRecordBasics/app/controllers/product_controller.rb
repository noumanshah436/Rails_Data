class ProductController < ApplicationController
  def index

    @product = Product.new
    @product.name = "New Book"
    puts @product.name # "Some Book"
    # @product.save
  end
end
