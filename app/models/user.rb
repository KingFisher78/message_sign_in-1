class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def full_name
    return "#{self.first_name} #{self.last_name}"
  end
j
  def posts
    return Post.where( :user_id => self.id )
  end
end
