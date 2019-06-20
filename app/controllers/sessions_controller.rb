class SessionsController < ApplicationController

  def create
      account = Account.find_or_create_from_auth(request.env['omniauth.auth'])
      session[:user_id] = account.uid
      session[:token] = account.token
      session[:secret] = account.secret
      flash[:notice] = "ユーザ認証が完了しました。"
      redirect_to root_path
  end

  def destroy
      reset_session
      flash[:notice] = "ログアウトしました。"
      redirect_to root_path
  end

end
