class ItemsController < ApplicationController
  def index 
    @items = EcommerceFacade.item_index
  end

  def show 
    @item = EcommerceFacade.item_page(params[:id])
  end
end