class ArticlesController < ApplicationController
	include ArticlesHelper
	def index
		@articles = Article.all
	end
	def new
		@article = Article.new
	end
	def create
=begin
		@article = Article.new
		@article.title = params[:article][:title]
		@article.body = params[:article][:body]
=end

=begin
	
        @article = Article.new(
                title: params[:article][:title],
                body: params[:article][:body])
=end
       
       # @article = Artical.new(params[:article])
		@article=Article.new(article_params)
		@article.save
		redirect_to article_path(@article.id)
	end
	def show
		@article = Article.find(params[:id])
	end
end
