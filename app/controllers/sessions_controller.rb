class SessionsController < ApplicationController

  def new
      @account = Account.new
      if logged_in?
        redirect_to @user
      end
  end

  def create
    @account = Account.find_by(username: params[:account][:username])
    if @account.try(:authenticate, params[:account][:password])
      session[:account_id] = @account.id
      redirect_to '/'
    else
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end
