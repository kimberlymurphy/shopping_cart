require 'spec_helper'

feature "Products management" do
  scenario "User creates a new product" do
    #visit '/products/new'
    visit new_product_path

    fill_in 'Name', with: 'Golden Delicious'
    fill_in 'Description', with: 'This is a yummy apple'
    fill_in 'Image URL', with: 'http://www.nyapplecountry.com/images/varieties/goldendeliciouspage.jpg'
    fill_in 'Price', with: 5.99
    click_button 'Create Product'

    expect(page).to have_content('Product was successfully created.')
  end
end
