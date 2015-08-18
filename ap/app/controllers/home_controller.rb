class HomeController < ApplicationController

	def index
		@tweets = Tweet.all.order('created_at DESC')
		@notifications = Notification.where(user_notified: [0, current_user.id]).order('created_at DESC')
	end
end
