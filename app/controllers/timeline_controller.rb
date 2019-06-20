# coding: utf-8

class TimelineController < ApplicationController
  include Common
  require 'twitter'

  def hello
    @msg = "こんにちはーーー！お元気ですかーーーーーー！！！！"
  end

  def bye
    render text:  'bye!'
  end

  def index
  end

  def timeline

    @situation_number = params[:situation].to_i
    if @situation_number < 1 || @situation_number > 8
      redirect_to controller: 'menu', action: 'index'
    end
    client = client_new
    @user = client.user
    @tweets = client.home_timeline(exclude_replies:true, include_entities:true)
    account = Account.find_by(uid: session[:user_id])
    @like_name = account.like_name
    if @situation_number == 1
       @like_name = account.known_name
     end
    @spam = Situation.find_by(num: @situation_number)
    @spamuser = Spamuser.find_by(num: @situation_number)

  end

  def store
    answer = Answer.new
    account = Account.find_by(uid: session[:user_id])
    account.progress = account.progress + 1
    answer.uid = session[:user_id]
    answer.situation = account.progress
    answer.ans1 = params[:answer1]
    ans2 = ""
    params[:answer2].each do |ans|
    ans2 = ans2 + ans + ','
  end
    answer.ans2 = ans2
    answer.ans3 = params[:answer3]
    answer.save
    account.save
    redirect_to controller: 'menu', action: 'index'
  end




end
