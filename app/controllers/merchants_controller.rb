class MerchantsController < ApplicationController 
  def index 
    @merchants = EcommerceFacade.merchants 
  end
end