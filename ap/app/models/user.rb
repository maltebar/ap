class User < ActiveRecord::Base
	has_many :partnerships, through: :membership
	
	after_create :update_nickname
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def update_nickname
  	self.update(nickname: self.name.to_s.delete(' ').downcase)
  end
end
