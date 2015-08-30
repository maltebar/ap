class CodeSolutionAttachment < ActiveRecord::Base
	belongs_to :code_solution
	has_attached_file :record,
						styles: { thumb: ["48x48#", :jpg] }
	validates_attachment_content_type :record,
						content_type: /\Atext/
end
