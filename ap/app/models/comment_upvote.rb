class CommentUpvote < ActiveRecord::Base
	after_save :increment_upvotes

	belongs_to :user
	belongs_to :comment

	def increment_upvotes
		@comment = self.comment
		current_upvotes = @comment.upvotes
		@comment.update(upvotes: current_upvotes + 1)
	end
end
