class Post < ActiveRecord::Base
  def user
    return User.find(self.user_id)
  end

  def responses
    Response.where(post_id: self.id)
  end
end
