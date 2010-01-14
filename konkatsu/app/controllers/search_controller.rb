class SearchController < ApplicationController
  
  # GET /search/search
  def search
    # 検索画面を表示
    @search = Member.new
  end
  
  # GET /search/search_result
  def search_result
    
    # 検索条件を取得
    @sex=params[:sex]
    @age1=params[:age1]
    @age2=params[:age2]
    @height1=params[:height1]
    @height2=params[:height2]
    @wight1=params[:wight1]
    @wight2=params[:wight2]
    @chara=params[:chara]
    @hoby=params[:hoby]
    @occupation=params[:occupation]
    
    # 検索処理
    @members = Member.condition_search
    
    # 検索結果画面を表示
    @members = Member.find_member
    
    
    
    
  end
  
  
end
