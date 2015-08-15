class Partnership < ActiveRecord::Base
	has_many :users, through: :membership
	has_many :projects, through: :ownership
	has_many :design_cases
	has_many :issues
end
