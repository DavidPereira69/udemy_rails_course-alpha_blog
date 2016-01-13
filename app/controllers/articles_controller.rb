class ArticlesController < ApplicationController
  
  def new
    @article = Article.new
  end
  
  def create
    #render plain: params[:article].inspect #to display the hash/passed variables of the form in browser
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_show(@article)
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
  
end