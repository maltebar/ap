class Project < ActiveRecord::Base
	belongs_to :partnership
	has_many :design_cases
	has_many :board_posts
end
