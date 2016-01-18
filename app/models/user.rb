class User < ActiveRecord::Base
  has_secure_password

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    user && user.authenticate(password)
  end

  def gravatar_id
    Digest::MD5::hexdigest(email.downcase)
  end
end
