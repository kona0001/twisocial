class MenuController < ApplicationController

  protect_from_forgery with: :exception

  def index
    account = Account.find_by(uid: session[:user_id])
    @progress = account.progress
  end

  def choice
    if session[:user_id].blank?
      redirect_to root_path
    else
      account = Account.find_by(uid: session[:user_id])
      if account.age.present?
        redirect_to controller: 'menu', action: 'choicename'
      end
    end
  end

  def choicename
    if session[:user_id].blank?
      redirect_to root_path
    else
      account = Account.find_by(uid: session[:user_id])
      if account.like_name.present?
        redirect_to controller: 'menu', action: 'index'
      end
    end
  end


  def store
    account = Account.find_by(uid: session[:user_id])
    account.progress = 0
    account.age = params[:answer1]
    account.gender = params[:answer2]
    account.extra = params[:answer3] + params[:answer4]
    account.save
    redirect_to controller: 'menu', action: 'choicename'
  end

  def store_choicename
    account = Account.find_by(uid: session[:user_id])
    account.like_name = params[:like_name]
    account.known_name = params[:known_name]
    account.save
    redirect_to controller: 'menu', action: 'index'
  end

  def inp
    if session[:user_id].blank?
      redirect_to root_path
    end
  end

  def inpstore
    answer2 = Answer2.new
    answer2.uid = session[:user_id]
    answer2.type = 1
    answer2.ans1 = params[:answer1]
    answer2.ans2 = params[:answer2]
    answer2.save
    redirect_to controller: 'menu', action: 'finish'
  end

  def finish
  end

end
