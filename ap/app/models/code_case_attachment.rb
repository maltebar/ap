class CodeCaseAttachment < ActiveRecord::Base
	belongs_to :code_case
	has_attached_file :record,
						styles: { thumb: ["64x64#", :jpg] }
	do_not_validate_attachment_file_type :record
end
