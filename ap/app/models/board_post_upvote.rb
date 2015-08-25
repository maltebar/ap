class BoardPostUpvote < ActiveRecord::Base
	after_save :increment_upvotes
	after_save :notify

	belongs_to :user
	belongs_to :board_post

	def increment_upvotes
		@board_post = self.board_post
		current_upvotes = @board_post.upvotes
		@board_post.update(upvotes: current_upvotes + 1)
	end

	def notify
		Notification.create(message: self.user.nickname.to_s + ' liked your sounding board post.', user_notified: self.board_post.user_id, link: '/'+'board_posts/'+self.board_post_id.to_s)
	end
end
