module ApplicationHelper
  def users_session
    content_tag 'div', class: 'users-session' do
      if current_user
        concat content_tag('h4') { 'Signed In: ' + current_user.name }
        concat link_to 'Sign Out', sign_out_path
      else
        concat content_tag 'br'
        concat link_to 'Sign In', sign_in_path
        concat content_tag 'br'
        concat link_to 'Sign Up', new_user_path
      end
    end
  end

  def show_errors(object)
    if object.errors.any?
      content_tag 'div', id: 'error_explanation' do
        pluralize(object.errors.count, 'error')
        flash.now[:notice] = 'Prohibited this object from being saved'

        object.errors.full_messages.each do |message|
          message
        end
      end
    end
  end
end
