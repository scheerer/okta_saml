module UsersHelper

  def current_user
    User.verify(session[:user_token])
  end

  def current_user=(u)
    session[:user_token] = u.session_key
  end

end