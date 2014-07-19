class CommentsController < ApplicationController
<<<<<<< HEAD
  def create
    @article = Article.find(params[:article_id])
=======
http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  def create
  @article = Article.find(params[:article_id])
#     @article = Article.find(params[:article_id])
>>>>>>> 2dcb805fecf0addaa33a8a3a8fb0dc4cfdd7a34f
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end
 
<<<<<<< HEAD
=======
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end
 
>>>>>>> 2dcb805fecf0addaa33a8a3a8fb0dc4cfdd7a34f
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
<<<<<<< HEAD
end
=======
end
>>>>>>> 2dcb805fecf0addaa33a8a3a8fb0dc4cfdd7a34f
