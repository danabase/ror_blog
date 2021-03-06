class ArticlesController < ApplicationController
	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end

	def update
		@article = Article.find(params[:id])

		if @article.update_attributes(params[:article])
			redirect_to @article
		else
			render 'edit'
		end
	end

	def edit
		@article = Article.find(params[:id])
	end

	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def show
		@article = Article.find(params[:id])
	end

	def create
		@article = Article.new(params[:article])

		if @article.save			
			redirect_to @article
		else
			render 'new'
		end
	end
end
