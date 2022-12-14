require 'rails_helper'

RSpec.describe 'items index page' do 

  describe 'as a visitor when i visit items index' do 
    it 'i see a list of items and each item links to their show page', :vcr do
      visit items_path 
      expect(page).to have_content("All Items")
      expect(page).to_not have_content("All Merchants")
      click_link "Item Nemo Facere"
      expect(current_path).to eq(item_path("4"))
      expect(page).to have_content("$42.91")
      expect(page).to have_content("Item Description")

    end
  end
end