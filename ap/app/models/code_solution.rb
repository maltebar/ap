class CodeSolution < ActiveRecord::Base
	belongs_to :user
	belongs_to :code_case
	has_many :code_solution_attachments
end
