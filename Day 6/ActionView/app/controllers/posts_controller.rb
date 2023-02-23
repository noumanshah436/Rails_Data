class PostsController < ApplicationController
  def index
  end

  # http://localhost:3000/posts/new
  def new
    @post = Post.new
  end

  def create
    puts "title:"
    # puts params[:post]
    # puts params[:post][:author]

    puts params
    puts params[:title]
  end
end
