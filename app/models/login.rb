class Login < ActiveRecord::Base
  attr_accessible  :password, :username
  validates :username, :presence => true
  validates :password, :presence => true
  def self.authenticate(username="", login_password="")
	user = Login.find_by_username(username)
	password = Login.find_by_password(login_password)

	if user && password
		return user
	else
		return false
	end
   end
end
