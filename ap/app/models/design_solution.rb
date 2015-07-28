class DesignSolution < ActiveRecord::Base
	belongs_to :user
	belongs_to :design_case
end
