require 'rails_helper'

RSpec.describe 'items show page' do 

  describe 'as a visitor when i visit items index' do 
    it 'i see an items details', :vcr do
      visit item_path("4") 
      expect(page).to have_content("$42.91")
      expect(page).to have_content("Item Description")
      expect(page).to_not have_content("All Items")

    end
  end
end