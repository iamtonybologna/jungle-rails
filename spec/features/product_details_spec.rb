require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do

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

  scenario "They see product details" do
    visit root_path
    # visit '/products/1'
    # page.find('.btn.btn-default.pull-right').click
    click_on 'test'

    sleep 1

    save_screenshot

    expect(page).to have_css 'article.product-detail'
  end

end
