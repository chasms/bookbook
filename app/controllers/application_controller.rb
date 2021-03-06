class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in?
    !!User.where(id: session[:user_id]).first
  end

  def account
    if logged_in?
      @account = Account.find(session[:user_id])
    else
      if session    # destroy sessions that are no longer linked to user accounts
        session.destroy
      end
      redirect_to login_path    # if not logged in, redirect to login
    end
  end

end
