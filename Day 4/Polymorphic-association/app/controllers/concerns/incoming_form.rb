module IncomingForm
  extend ActiveSupport::Concern

  #  we just include it in comments_controller
  
  def commentable
    commentable = Article.find(params[:article_id]) if params[:article_id].present?
    commentable = Post.find(params[:post_id]) if params[:post_id].present?

    commentable
  end

  def commentable_path(commentable)
    path =  article_path(commentable) if params[:article_id].present?
    path = post_path(commentable) if params[:post_id].present?
    path
  end
end
