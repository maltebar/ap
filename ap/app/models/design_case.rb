class DesignCase < ActiveRecord::Base
	has_many :design_solutions
	belongs_to :partnership
end
