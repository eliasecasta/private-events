module UsersHelper
  def current_user
    user_id = session[:current_user_id]
    User.find_by(id: user_id)
  end
end
