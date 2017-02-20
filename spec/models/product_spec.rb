require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    before do
      @shoes = Category.create(name: 'Nike')
      @product = Product.create(name: 'jafskdjsdf', price: 200, quantity: 1, category: @shoes)
    end

    it "should have a name" do
      is_expected.to validate_presence_of(:name)
    end

    it "should have a price" do
      is_expected.to validate_presence_of(:price)
    end

    it "should have a quantity" do
      is_expected.to validate_presence_of(:quantity)
    end

    it "should have a category" do
      is_expected.to validate_presence_of(:category)
    end

  end
end