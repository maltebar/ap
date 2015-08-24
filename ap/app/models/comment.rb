class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :board_post

	after_create :notify

	def notify
		Notification.create(message: self.user.nickname.to_s + ' commented on your post ' + self.board_post.title.to_s, user_notified: self.board_post.user_id, link: '/'+'board_posts/'+self.board_post.id.to_s)
	end
end
