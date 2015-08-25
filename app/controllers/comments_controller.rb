class CommentsController < ApplicationController
http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  def create
#raise params[:article_id].inspect
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new
@comment.commenter = params[:comment][:commenter]
@comment.body = params[:comment][:body]
@comment.article_id = params[:article_id]
@comment.save
    redirect_to article_path(@article)
  end


 
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

end	
