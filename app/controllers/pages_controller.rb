class PagesController < ApplicationController
  def about
    @news_count = News.all.count
  end

  def contacts
  end
  
  def index
  end
end
