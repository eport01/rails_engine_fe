class MerchantsController < ApplicationController 
  def index 
    @merchants = EcommerceFacade.merchants 
  end

  def show 
    @merchant = EcommerceFacade.merchant_show(params[:id])
    @merchant_items = EcommerceFacade.items_for_a_merchant(params[:id])
  end
end