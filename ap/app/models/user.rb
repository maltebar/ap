class User < ActiveRecord::Base
	has_many :memberships
	has_many :partnerships, :through => :memberships
  has_many :groups, :through => :group_mems
  has_many :group_mems
	

	after_create :update_nickname
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def update_nickname
  	self.update(nickname: self.name.to_s.delete(' ').downcase)
  end
end
