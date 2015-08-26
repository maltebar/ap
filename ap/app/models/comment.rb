class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :board_post

	after_create :notify

	def notify
		unless self.user_id == self.board_post.user_id
			Notification.create(message: self.user.nickname.to_s + ' commented on your post ' + self.board_post.title.to_s, user_notified: self.board_post.user_id, link: '/'+'board_posts/'+self.board_post.id.to_s)
		end
		@post = self.board_post
		commenters = Array.new
		commenters << @post.user_id
		commenters << self.user_id
		@post.comments.each do |c|
				if !commenters.include?(c.user_id)
					Notification.create(message: self.user.nickname.to_s + ' also commented on ' + self.board_post.title.to_s, user_notified: c.user_id, link: '/'+'board_posts/'+self.board_post.id.to_s)
					commenters << c.user_id
				end
		end
	end
end



