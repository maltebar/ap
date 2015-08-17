class DesignSolution < ActiveRecord::Base
	belongs_to :user
	belongs_to :design_case
	has_paper_trail
end
