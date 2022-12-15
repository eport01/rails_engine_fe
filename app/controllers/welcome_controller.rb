class WelcomeController < ApplicationController
  def index 
    @merchants = EcommerceFacade.merchants 
    if params[:keyword] 
      @item_results = EcommerceFacade.item_search(params[:keyword])
    elsif params[:name] 
      @merchant_result = EcommerceFacade.merchant_search(params[:name])
      # require 'pry'; binding.pry
      if @merchant_result == nil 
        render :index 
      end
    end
  end
end