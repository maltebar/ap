class Notifier < ApplicationMailer
	def activity(recipient)
		@account = recipient
		@notifications = Notification.where(user_notified: [recipient.id, 0])
		mail(to: 'm.altebarmakian@gmail.com')
	end
end
