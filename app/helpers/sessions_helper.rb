module SessionsHelper
  # logs a user in by creating a session
  def log_in(user)
    session[:user_id] = user.id
  end

  # logs a user out by deleting the session
  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end

  # checks if the user passed in is the current user
  def current_user?(user)
    user == current_user
  end

  # uses cookie to verify and set current user
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  # checks if the current user is logged in
  def logged_in?
    !current_user.nil?
  end

  # Remembers a user in a persistent session.
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  # Forgets a persistent session.
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # redirect to stored location or to the default location
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # sets/stores the url a user is trying to get to
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end
