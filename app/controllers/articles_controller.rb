class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by(id: params[:id])
    if !@article
      @error_msg = "Couldn't find any articles with id=#{params[:id]}"
      render 'not_found', status: :not_found
    end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      # redirect_to @article
      redirect_to "/articles/#{@article.id}"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path, status: :see_other
    # if @article
    #   @article.destroy
    #   redirect_to "/articles"
    # else
    #   render :destroy, status: :unprocessable_entity
    # end
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end

  # private
  # def render_404
  #   # send_file "#{Rails.root}/public/404.html", status: :not_found, content_type: 'text/html'
  #   render file: "#{Rails.root}/public/404.html", layout: false, status: :not_found
  # end
end

