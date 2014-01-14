class CommentsController < ApplicationController
	respond_to :html, :js

	def index
		@comments = Comment.all		
	end

	def new
		@comment = Comment.new		
	end

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comments_params)	
		#render nothing: true
	end

	def destroy
		
	end

	private
	def comments_params
		params.require(:comment).permit(:c_author, :c_body)
	end
end