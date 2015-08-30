class CodeCaseAttachment < ActiveRecord::Base
	belongs_to :code_case
	has_attached_file :record,
						styles: { thumb: ["64x64#", :jpg] }
	validates_attachment_content_type :record,
						content_type: /\Atext/
end
