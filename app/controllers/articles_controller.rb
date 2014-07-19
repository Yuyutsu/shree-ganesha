class ArticlesController < ApplicationController
<<<<<<< HEAD
=======
http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
 
  def index
    @articles = Article.all
  end
 
  # snipped for brevity

>>>>>>> 2dcb805fecf0addaa33a8a3a8fb0dc4cfdd7a34f
def new
  @article = Article.new
end

def create
  @article = Article.new(article_params)

  if @article.save
    redirect_to @article
  else
    render 'new'
  end
end

def show
  @article = Article.find(params[:id])
end	
	
<<<<<<< HEAD
def index
  @articles = Article.all
end
=======

>>>>>>> 2dcb805fecf0addaa33a8a3a8fb0dc4cfdd7a34f
def edit
  @article = Article.find(params[:id])
end

def update
  @article = Article.find(params[:id])
 
  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
end
 def destroy
  @article = Article.find(params[:id])
  @article.destroy
 
  redirect_to articles_path
end
private
  def article_params
    params.require(:article).permit(:title, :text)
  end


end
class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
 
      # this line adds an integer column called `article_id`.
      t.references :article, index: true
 
      t.timestamps
    end
  end
end

