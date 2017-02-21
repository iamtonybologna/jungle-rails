require 'rails_helper'

RSpec.feature "AddToCart", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    @category.products.create!(
      name: 'test',
      description: Faker::Hipster.paragraph(4),
      image: open_asset('apparel1.jpg'),
      quantity: 10,
      price: 64.99
    )
  end

  scenario "They see cart details" do
    visit root_path
    # visit '/products/1'
    # page.find('.btn.btn-default.pull-right').click
    click_on 'Add'

    sleep 1

    save_screenshot

    expect(page).to have_text 'Cart (1)'
  end

end
