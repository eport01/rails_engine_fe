require 'rails_helper'

RSpec.describe 'welcome page' do 
  before :each do 
    visit root_path 
  end
  describe 'as a visitor when i visit the root path' do 
    it 'i can search for an item by keyword', :vcr do 
      fill_in "Search for Items", with: "alias"
      within '#item_search' do 
        click_button "Submit"
      end
      expect(current_path).to eq(root_path)
      # expect(page).to have_content("Item Search Results for 'alias'")
      expect(page).to have_content("Item Alias Cum")
      expect(page).to have_content("Item Alias Repudiandae")
      expect(page).to_not have_content("Item Et Cumque")

      click_link "Item Alias Cum"

      expect(current_path).to eq(item_path("95"))
      expect(page).to have_content("Item Alias Cum's Page")
      expect(page).to have_content("Item Price")
      expect(page).to have_content("$613.58")

    end

    it 'i can search for a merchant by keyword', :vcr do 
      visit root_path
      fill_in "Search for Merchant", with: "li"
      within '#merchant_search' do 
        click_button "Submit" 
      end
      expect(current_path).to eq(root_path)
      # expect(page).to have_content('Merchant Search Results for "li"')
      expect(page).to have_content("Balistreri, Schaefer and Kshlerin")
      click_link "Balistreri, Schaefer and Kshlerin"
      expect(current_path).to eq(merchant_path("26"))
      expect(page).to have_content("Item List")
      expect(page).to have_content("Item Qui Molestiae")


    end

  end
end