class CommentsController < ApplicationController
  include IncomingForm

def create
  @comment = commentable.comments.new(comments_params)

  if @comment.save
    redirect_to commentable_path(commentable), notice: 'Comment was created successfully.'
  end
end

private

def comments_params
  params.require(:comment).permit(:text)
end

end
