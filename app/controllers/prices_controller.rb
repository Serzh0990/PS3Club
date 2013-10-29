class PricesController < ApplicationController
  before_action :set_prices, only: [:edit,:update,:show] 
def index
if current_user.try(:admin?)
 @prices = Price.all
 else
 redirect_to root_path
 end
end

def show
if current_user.try(:admin?)
  else
  redirect_to root_path	
  end
end

def new
if current_user.try(:admin?)
  @price = Price.new
  else
  redirect_to root_path
  end
end

def create
  @price = Price.new(prices_params)
  if @price.save
    redirect_to root_path
  else
    render action: 'new'
  end
end

def edit
	if current_user.try(:admin?)
	else
	redirect_to root_path
	end
end

def update
  if @price.update(prices_params)
    flash[:success] = 'Цена успешно обновлена!'
    redirect_to root_path
  else
    render action: 'edit'
  end
end

  private
  
    def prices_params
      params.require(:price).permit(:title, :description, :cost)
    end
    
    def set_prices
      @price = Price.find(params[:id])
    end
    
  
end