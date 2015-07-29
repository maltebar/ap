class User < ActiveRecord::Base
	has_many :partnerships
	has_many :board_posts
	has_many :code_solutions
	has_many :design_solutions
	has_many :comments
	has_many :issues
	has_many :titles
	has_many :groups
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
