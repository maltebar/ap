class CodeSolution < ActiveRecord::Base
	belongs_to :user
	belongs_to :code_case
end
