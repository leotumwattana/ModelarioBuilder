class StockCardsController < ApplicationController
  respond_to :html, :xml, :js, :json
  
  def index
    @stock_cards = StockCard.where("sku like ? OR name like ?", "%#{params[:q]}%", "%#{params[:q]}%")
    respond_with @stock_cards
  end
  
  def show
    @stock_card = StockCard.find(params[:id])
    respond_with @stock_card
  end
  
  def new
    @stock_card = StockCard.new
    respond_with @stock_card
    session[:return_to] = request.referer
  end
  
  def create
    @stock_card = StockCard.new(params[:stock_card])
    if @stock_card.save_with_image(params[:photo_sku])
      flash[:notice] = "Successfully created stock card"
    end
    redirect_to session[:return_to]
  end
  
  def edit
    @stock_card = StockCard.find(params[:id])
    respond_with @stock_card
    session[:return_to] = request.referer
  end
  
  def update
    @stock_card = StockCard.find(params[:id])
    if @stock_card.update_attributes(params[:stock_card])
      flash[:notice] = "Succesfully updated stock card"
    end
    unless params[:photo_sku] == ""
      unless @stock_card.local_image_exists?
        @stock_card.save_with_image(params[:photo_sku])
      end
    end
    redirect_to session[:return_to]
  end
  
  def destroy
    @stock_card = StockCard.find(params[:id])
    @stock_card.destroy
    flash[:notice] = "Successfully destroyed stock card"
    redirect_to request.referer
  end
  
  def batch_add_or_update
    
  end
end
