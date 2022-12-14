require 'rails_helper'

RSpec.describe 'merchant show page' do 

  describe 'as a visitor when i visit merchants show' do 
    it 'i see that merchants name and the items for that merchant', :vcr do 
      visit merchant_path("6")
      expect(page).to have_content("Williamson Group") 
      expect(page).to have_content("Item Quidem Exercitationem")
      expect(page).to have_content("Item Et Sequi")
      expect(page).to_not have_content("Schroeder-Jerde")

    end
  end
end