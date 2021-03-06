class ArticlesController < ApplicationController

before_action :find_article, only:[:edit, :show, :update, :destroy]

	def index
    @articles = Article.all
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
    @article = Article.new
  end

  def edit
  end

  def show
  end

  def update
    if @article.update(article_params)
      redirect_to articles_path
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

private

  def article_params
    params.require(:article).permit(:title, :author, :publication, :date_published, :subject, :abstract, :full_article, :notes)
  end

  def find_article
    @article = Article.find(params[:id])
  end

end
