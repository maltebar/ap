class Ownership < ActiveRecord::Base
	belongs_to :partnership
	belongs_to :project
end
