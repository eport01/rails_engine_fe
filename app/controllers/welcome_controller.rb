class WelcomeController < ApplicationController
  def index 

    if params[:keyword]
      @item_results = EcommerceFacade.item_search(params[:keyword])
    end
  end
end