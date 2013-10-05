class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:show, :index]
  # GET /news
  # GET /news.json
  def index
    @news = News.paginate(:page => params[:page],:per_page => 5).order('id DESC')
  end
  
  # GET /news/1
  # GET /news/1.json
  def show
  end

  # GET /news/new
  def new
    if current_user.admin?
    @news = News.new
  else redirect_to root_path
  end
  end

  # GET /news/1/edit
  def edit
    if current_user.admin?
    else redirect_to root_path
    end
  end

  # POST /news
  # POST /news.json
  def create
    @news = News.new(news_params)

    respond_to do |format|
      if @news.save
        format.html { redirect_to root_path, success: 'News was successfully created.' }
        format.json { render action: 'index', status: :created, location: @news }
      else
        format.html { render action: 'new' }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news/1
  # PATCH/PUT /news/1.json
  def update
    respond_to do |format|
      if @news.update(news_params)
        format.html { redirect_to root_path, success: 'News was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news/1
  # DELETE /news/1.json
  def destroy
    if current_user.admin?
    @news.destroy
    redirect_to root_path, success: "News was successfully deleted."
  else
    redirect_to root_path
  end
    respond_to do |format|
      format.html { redirect_to news_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_params
      params.require(:news).permit(:title, :image, :description)
    end
end
