require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do

  # SETUP
  before :each do

    @user = User.create!(
      name: 'tony',
      email: 'test@test.com',
      password: 'supersecret',
      password_confirmation: 'supersecret'
    )

  end

  scenario "They see home page" do
    visit root_path
    # visit '/products/1'
    # page.find('.btn.btn-default.pull-right').click
    click_on 'Login'
    fill_in 'email', with: 'test@test.com'
    fill_in 'password', with: 'supersecret'
    click_button 'Submit'

    sleep 1

    save_screenshot

    expect(page).to have_text 'Signed in as'
  end

end
