# -*- coding: utf-8 -*-
class DeregistController < ApplicationController
  def index
    # 確認画面を表示
  end
  def complete
    member = session[:user] # TODO: 要調整
    if !member.delete
      render :action => "index"
    end
  end
end
