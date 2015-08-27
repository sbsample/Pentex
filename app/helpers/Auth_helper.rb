helpers do
  def login(user)
    session[:user_id] = user.id
  end

  def logout!
    session[:user_id] = nil
  end

  def logged_in?
    current_user.present?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  

  def authentication
    authenticated_header = <<-HTML

      <a href="/logout">Logout</a>
    HTML

    unauthenticated_header = <<-HTML
      <a href="/users/login">Login or  </a>

      <a href="/users/new">Signup</a>
    HTML

    logged_in? ? authenticated_header : unauthenticated_header
  end


end
