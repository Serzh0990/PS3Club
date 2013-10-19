class WishesController < ApplicationController
  before_action :set_wish , only: [:show,:edit,:update,:destroy]
  before_filter :authenticate_user!

def index
  if current_user.admin?
  @wishes = Wish.all.order('id DESC')
else 
  redirect_to root_path
end
end

def show
  if current_user.admin?
    @wish = Wish.find(params[:id])
  else
    redirect_to root_path
  end
end

def new
  @wish = Wish.new
end

def edit
  if current_user.admin?
    @wish = Wish.find(params[:id])
  else
    redirect_to root_path
  end
end

def create
  @wish = Wish.new(wish_params)
    respond_to do |format|
      if @wish.save
        format.html { redirect_to root_path, success: 'Wish was successfully created.' }
        format.json { render action: 'index', status: :created, location: @wish }
      else
        format.html { render action: 'new' }
        format.json { render json: @wish.errors, status: :unprocessable_entity }
      end
    end
end

def update
  respond_to do |format|
    if @wish.update(wish_params)
      format.html { redirect_to root_path, success: 'Wish was successfully updated.' }
      format.json { head :no_content }
    else
      format.html { render action: 'edit' }
      format.json { render json: @wish.errors, status: :unprocessable_entity }
    end
  end
end


def destroy
    @wish.destroy
    redirect_to root_path, success: "Wish was successfully deleted."
end

private

def wish_params
  params.require(:wish).permit(:title, :text, :complete)
end

def set_wish
  @wish = Wish.find(params[:id])
end

end

