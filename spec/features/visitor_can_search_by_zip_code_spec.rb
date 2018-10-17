require 'rails_helper'

# As a user
describe 'As a visitor' do
  context "they visit / and enter a zip code" do
    it 'displays the 10 nearest stations within 6 miles sorted by distance' do
      # When I visit "/"
      visit '/'
      # And I fill in the search form with 80203 (Note: Use the existing search form)
      fill_in :q, with: "80203"
      # And I click "Locate"
      click_on "Locate"
      # Then I should be on page "/search"
      save_and_open_page

      expect(current_path).to eq("/search")
      expect(page).to have_content("10 Results")
      # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
      # And the stations should be limited to Electric and Propane
      # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times

    end
  end
end
