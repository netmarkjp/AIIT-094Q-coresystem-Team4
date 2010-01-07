# -*- coding: utf-8 -*-
class RegistController < ApplicationController
  # GET /regist
  # GET /regist/
  def index
    # 入力画面を表示
    @regist = Member.new
  end

  # GET /regist/confirm
  def confirm
    # validation
    @regist = Member.new(params[:member])
    if !@regist.valid?
      # ng->入力画面を表示(再入力)
      render :action => "index"
    end
    #flash[:userdata] = @regist
    session[:userdata] = @regist
    # ok->確認画面を表示
  end

  # GET /regist/complete
  def complete
    # 登録処理実施
    @regist = session[:userdata]
    if @regist.save
      # ok->mypageへリダイレクト
      session[:userdata] = nil
      redirect_to "/mypage"
    else
      # ng->入力画面を表示(再入力)
      render :action => "index"
    end
  end
end
