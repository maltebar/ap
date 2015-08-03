class Partnership < ActiveRecord::Base
	has_many :users
	has_many :projects, through: :ownership
	has_many :design_cases
	has_many :issues
end
