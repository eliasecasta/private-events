module UsersHelper
  def current_user
    user_id = session[:current_user_id]
    user_id ? User.find(user_id) : nil
  end

  def list_events
    current_user ? current_user.events : nil
  end

  def events_grouped_by_date
    return unless list_events

    current_date = Time.now
    list_events
      .reject { |event| event.date.nil? }
      .reduce({ upcoming: [], previous: [] }) do |events, event|
      if event.date >= current_date
        events[:upcoming] = events[:upcoming] << event
      else
        events[:previous] = events[:previous] << event
      end
      events
    end
  end
end
