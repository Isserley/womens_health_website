class ArticlesController < ApplicationController

	def index
    @articles = Article.all  #displays a list of all articles, see index.html.erb
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end

  def new
    @article = Article.new   #see new.html.erb
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])  #shows a particular article, see show.html.erb
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to articles_path
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

private

  def article_params
    params.require(:article).permit(:title, :author, :publication, :date_published, :subject, :abstract, :full_article, :notes)
  end

end
