class CommentsController < ApplicationController
  def create
    # puts " --------- Getting Params to test ----------- "
    # puts params
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
