class Project < ActiveRecord::Base
	has_many :ownerships
	has_many :partnerships, :through => :ownerships
	has_many :design_cases
	has_many :board_posts
	has_many :attachments
end
