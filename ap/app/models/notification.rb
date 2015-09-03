class Notification < ActiveRecord::Base
	belongs_to :user

	def send_mail
		User.all.each do |user|
			Notifier.activity(user).deliver_now
		end
	end
end
