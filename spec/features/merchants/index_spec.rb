require 'rails_helper'

RSpec.describe 'merchant index page' do 
  before :each do 
  end
  describe 'as a visitor when i visit merchants index' do 
    it 'i see a list of merchants by name and can click on link to go to their show page', :vcr do 
      visit '/merchants' 

      expect(page).to have_content("List of Merchants:")
      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to have_content("Klein, Rempel and Jones")

    end

    it 'on merchant show page i see list of items merchant sells' do 

    end
  end
end