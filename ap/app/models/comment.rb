class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :board_post

	after_save :notify

	def notify
		Notification.create(message: self.user.nickname.to_s + ' commented on your post ' + self.board_post.title.to_s, user_notified: self.board_post.user_id)
	end
end
