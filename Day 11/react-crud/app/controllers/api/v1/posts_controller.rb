module Api
  module V1
    class PostsController < ApiController
      skip_before_action :verify_authenticity_token
      before_action :find_post, only: %i[show update destroy]

      def index
        @posts = Post.order('created_at DESC');
        render json: @posts,status: :ok
      end

      def show
        if @post.nil?
          render json: nil, status: :not_found
        else
          render json: @post, status: :ok
        end
      end

      def create
        post = Post.new(post_params)

        if post.save
          render json:post, status: :ok
        else
          render json: post.errors, status: :unprocessable_entity
        end
      end

      def destroy
        if @post.nil?
          render json: nil, status: :not_found
        else
          @post.destroy
          # render json: @post ,status: :ok
          render json: Post.all ,status: :ok
        end

      end

      def update
        if @post.nil?
          render json: nil, status: :not_found
        else
          if @post.update_attributes(post_params)
            render json: @post, status: :ok
          else
            render json: @post.errors , status: :unprocessable_entity
          end
        end
      end

      private

      def find_post
        @post = Post.find_by(id: params[:id])
      end

      def post_params
        params.require(:post).permit(:title, :body, :image)
        # params.permit(:title, :body, :image)
      end

    end
  end
end
