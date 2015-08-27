class AdminPgController < ApplicationController
	def index
		@users = User.all
	end
end
