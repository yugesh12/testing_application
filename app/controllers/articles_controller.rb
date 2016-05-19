class ArticlesController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]
	
	def new
		@article = Article.new
	end

	def edit
		@article = Article.find_by_slug(params[:id])
	end

	def index
		@articles = Article.order(created_at: :desc).search(params[:search]).page(params[:page]).per(5)
	end


	def show
		@article = Article.find_by_slug(params[:id])
		@article_last=Article.last
		tag = Article.find_by_slug(params[:id]).tag
		@stories = Story.where(tag: tag)


	end

	def new
		@article = current_user.articles.build
	end

	def create
		@article = current_user.articles.build(article_params)

		if	@article.save
			redirect_to @article
		else
			render 'new'
		end
	end

	def update
		@article = Article.find_by_slug(params[:id])

		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end

	def destroy
		@article = Article.find_by_slug(params[:id])
		@article.destroy

		redirect_to articles_path
	end

	private

	def article_params
		params.require(:article).permit(:title, :content, :tag, :image, :consumeTime, :description, :slug)
	end


end
