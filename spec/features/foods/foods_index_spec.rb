require 'rails_helper'

RSpec.describe 'Foods index' do
  describe 'search for foods with ingredient' do
    it 'returns a list of foods (+ details) containing the ingredient' do
      visit root_path

      fill_in :q, with: 'sweet potatoes'
      click_on 'Ingredient Search'

      expect(current_path).to eq '/foods'
      expect(page).to have_content "Sweet Potatoes"
      expect(page).to have_content "ARCHER FARMS"
      expect(page).to have_content "492111402857"
    end

    it 'only returns the top 10 results'
  end
end

# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
