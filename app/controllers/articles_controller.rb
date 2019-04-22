class ArticlesController < ApplicationController
  def index
    @articles = Article.all #for controller and view to both see articles it must be an instance variable
  end
  def show
    @article = Article.find(params[:id])
  end
end
