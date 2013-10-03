class PagesController < ApplicationController
  def about
  end

  def contacts
  end
  
  def index
    @news = News.limit(5) 
  end
end
