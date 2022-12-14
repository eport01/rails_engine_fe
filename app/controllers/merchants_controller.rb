class MerchantsController < ApplicationController 
  def index 
    @merchants = EcommerceFacade.merchants 
  end

  def show 
    
  end
end