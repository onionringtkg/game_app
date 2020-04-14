class SessionsController < ApplicationController
  def create
    /ログインが成功した際のセッション情報の生成/
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to mypage_path  
    else
      render 'home/index'
    end
  end

  def destroy
    /ログアウト時のセッション破棄の処理/
    session.delete(:user_id)
    redirect_to root_path
  end
end
