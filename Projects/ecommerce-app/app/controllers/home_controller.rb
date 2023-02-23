class HomeController < ApplicationController
  def index
    @products = Product.includes(images_attachments: [:blob]).all
    # includes(image_attachments: [:blob])
  end

  def show
    @product = Product.includes(images_attachments: [:blob]).find(params[:id])
  end
end
