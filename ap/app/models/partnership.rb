class Partnership < ActiveRecord::Base
	has_many :memberships
	has_many :ownerships
	has_many :users, :through => :memberships
	has_many :projects, :through => :ownerships
	has_many :design_cases
	has_many :issues
end
