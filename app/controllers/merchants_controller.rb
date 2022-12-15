class MerchantsController < ApplicationController 
  def index 
    @merchants = EcommerceFacade.merchants 
  end

  def show 
    @merchant = EcommerceFacade.merchant_show(params[:id])
    @merchant_items = EcommerceFacade.items_for_a_merchant(params[:id])
    #use presenters, openstruct to combine multiple objects to present in the view
    #supposed to send one variable to the view per method 
  end
end