class PagesController < ApplicationController
  def about
  end

  def contacts
  end
  
  def index
    @news = News.limit(4).order('id DESC')
    @wishes = Wish.all
    @price1 = Price.find(2)
    @price2 = Price.find(3)
    @price3 = Price.find(4)
    @price_vip = Price.find(1)
  end
end
