class WelcomeController < ApplicationController
  def index 

    if params[:keyword]
      @item_results = EcommerceFacade.item_search(params[:keyword])
    elsif params[:name]
      @merchant_result = EcommerceFacade.merchant_search(params[:name])
    end
  end
end