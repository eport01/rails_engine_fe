class MerchantsController < ApplicationController 
  def index 
    @merchants = EcommerceFacade.merchants 
  end

  def show 
    @merchant = EcommerceFacade.merchant_show(params[:id])
  end
end