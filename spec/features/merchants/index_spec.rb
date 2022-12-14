require 'rails_helper'

RSpec.describe 'merchant index page' do 

  describe 'as a visitor when i visit merchants index' do 
    it 'i see a list of merchants by name and can click on link to go to their show page', :vcr do 
      visit merchants_path 

      expect(page).to have_content("List of Merchants:")
      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to have_content("Klein, Rempel and Jones")

    end

    it 'on merchant on index page links to merchant show page', :vcr do 
      visit merchants_path 
      click_link("Schroeder-Jerde")
      expect(current_path).to eq(merchant_path("1"))
      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to_not have_content("Klein, Rempel and Jones")
    end
  end
end