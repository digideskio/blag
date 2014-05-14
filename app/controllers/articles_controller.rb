class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    #binding.pry
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = 'it worked'
    else
      flash[:error] = 'it did not work'
    end
    #render new
    redirect_to new_article_path
  end

  private

    def article_params
      params.require(:article).permit(:author, :content, :title)
    end

end