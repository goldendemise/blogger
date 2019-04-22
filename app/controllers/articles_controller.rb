class ArticlesController < ApplicationController
  include ArticlesHelper
  def index
    @articles = Article.all #for controller and view to both see articles it must be an instance variable
  end
  def show
    @article = Article.find(params[:id])
  end
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end
  def destroy
      redirect_to article_path(@article)
    @article = Article.find(params[:id])

    @article.destroy

  end
  def edit
    @article = Article.find(params[:id])
  end
end
