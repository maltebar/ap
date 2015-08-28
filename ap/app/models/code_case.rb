class CodeCase < ActiveRecord::Base
	has_many :code_solutions
	has_many :code_case_attachments
end
