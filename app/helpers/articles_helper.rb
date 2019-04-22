module ArticlesHelper
  #strong parameters per http://tutorials.jumpstartlab.com/projects/blogger.html
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
