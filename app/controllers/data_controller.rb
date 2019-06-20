# coding: utf-8

class DataController < ApplicationController

  def show
    @accounts = Account.all
    @situations = Situation.all
    @spamusers = Spamuser.all
    @answer = Answer.all
    @answer2 = Answer2.all
  end

  def create_situation
  end

  def store_situation
    situation = Situation.new
    situation.num = params[:num]
    situation.text = params[:text]
    situation.like = params[:like]
    situation.fav = params[:fav]
    situation.mode = params[:mode]
    situation.image_url = params[:image_url]
    situation.save
    redirect_to controller: 'data', action: 'create_situation'
  end

  def create_spamuser
  end

  def store_spamuser
    spamuser = Spamuser.new
    spamuser.num = params[:num]
    spamuser.name = params[:name]
    spamuser.screenname = params[:screenname]
    spamuser.icon_url = params[:icon]
    spamuser.follow = params[:follow]
    spamuser.follower = params[:follower]
    spamuser.description = params[:description]
    spamuser.save
    redirect_to controller: 'data', action: 'create_spamuser'
  end

end
