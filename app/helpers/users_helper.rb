module UsersHelper
  def current_user
    user_id = session[:current_user_id]
    user_id ? User.find(user_id) : nil
  end

  def list_events
    current_user ? current_user.events : nil
  end

end
