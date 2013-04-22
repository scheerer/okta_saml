class User
  def self.find_by_email(email)
    User.new
  end

  def self.verify(session_key)
    User.new
  end

  def session_key
    'abcd'
  end

  def email
    'notreal@email.com'
  end
end