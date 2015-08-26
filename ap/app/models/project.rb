class Project < ActiveRecord::Base
	has_many :ownerships
	has_many :partnerships, :through => :ownerships
	has_many :design_cases
	has_many :board_posts
	has_attached_file :record
	validates_attachment :record,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png", "application/pdf", "application/doc", "application/docx"] }
end
