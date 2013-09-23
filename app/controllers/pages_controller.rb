class PagesController < ApplicationController
  def about
    @news_count = News.all.count
  end

  def contacts
  end
  
  def infos
    @news = News.paginate(:page => params[:page],:per_page => 10)
  end
end
