class PagesController < ApplicationController
  def about
  end

  def contacts
  end
  
  def index
    @news = News.limit(4).order('id DESC')
  end
end
