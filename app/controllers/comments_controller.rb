class CommentsController < ApplicationController
	include CommentsHelper
  def create
    @comment = Comment.new(com_helper)
    @comment.article_id = params[:article_id]

    @comment.save

    redirect_to article_path(@comment.article)
  end


end
