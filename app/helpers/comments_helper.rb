module CommentsHelper
	def com_helper
		params.require(:comment).permit(:author_name, :body)
	end
end
