class CodeSolutionAttachment < ActiveRecord::Base
	belongs_to :code_solution
	has_attached_file :record,
						styles: { thumb: ["48x48#", :jpg] }
	do_not_validate_attachment_file_type :record
end
