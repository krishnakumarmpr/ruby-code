class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "krishna", password: "success", except: [:index, :show]

def new
 @article = Article.new
end

def edit
    @article = Article.find(params[:id])
  end

def update
    @article = Article.find(params[:id])
     @article.title = params[:article][:title]
     @article.body = params[:article][:body]
     @article.author = params[:article][:author]
if @article.save
      redirect_to @article
    else
      render 'edit'
    end
  end
 
def index
 @articles = Article.all
end

def create
  @article = Article.new()
@article.title = params[:article][:title]
@article.body = params[:article][:body]
@article.author = params[:article][:author]
#raise @article.inspect
if @article.save
    redirect_to :action =>'index'
  else
    render 'new'
  end
end

 def show

    @article = Article.find(params[:id])
  end

  
def destroy
    @article = Article.find(params[:id])
    @article.destroy

     redirect_to :action =>'index'
end
private
  def article_params
    params.require(:article).permit(:title, :body ,:author)
  end 
end
