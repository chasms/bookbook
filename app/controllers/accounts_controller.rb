class AccountsController < ApplicationController

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    if !@account.save
      render root_path
    else
      session[:account_id] = @account.id
      redirect_to root_path
    end
  end

  def show
    @account = Account.find_by(id: params)
    if @account
      render :show
    else
      redirect_to root_path
    end
  end

  def destroy
    @account = Account.find_by(id: session[:account_id])
    @account.destroy
    session[:account_id] = nil
    redirect_to root_path
  end


  private

  def account_params
    params.require(:account).permit(:username, :password_digest)
  end


end
