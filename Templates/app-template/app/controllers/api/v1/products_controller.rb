# module Api
#   module V1
#     class ProductsController < ApiController
#       skip_before_action :verify_authenticity_token
#       before_action :find_product, only: %i[show update destroy]

#       def index
#         @products = Product.order('created_at DESC');
#         render json: @products,status: :ok
#       end

#       def show
#         if @product.nil?
#           render json: nil, status: :not_found
#         else
#           render json: @product, status: :ok
#         end
#       end

#       def create
#         product = Product.new(product_params)

#         if product.save
#           render json:product, status: :ok
#         else
#           render json: product.errors, status: :unprocessable_entity
#         end
#       end

#       def destroy
#         if @product.nil?
#           render json: nil, status: :not_found
#         else
#           @product.destroy
#           # render json: @product ,status: :ok
#           render json: product.all ,status: :ok
#         end

#       end

#       def update
#         if @product.nil?
#           render json: nil, status: :not_found
#         else
#           if @product.update_attributes(product_params)
#             render json: @product, status: :ok
#           else
#             render json: @product.errors , status: :unprocessable_entity
#           end
#         end
#       end

#       private

#       def find_product
#         @product = Product.find_by(id: params[:id])
#       end

#       def product_params
#         params.require(:product).permit(:name, :price, :size, :description, :model, :status, :quantity, images:[])

#         # params.require(:product).permit(  :name, :price, :size, :quantity   )
#         # params.permit(:title, :body, :image)
#       end

#     end
#   end
# end
