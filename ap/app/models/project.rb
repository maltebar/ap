class Project < ActiveRecord::Base
	has_many :partnerships, through: :ownership
	has_many :design_cases
	has_many :board_posts
end
