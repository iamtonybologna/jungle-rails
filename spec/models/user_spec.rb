require 'rails_helper'

describe User, type: :model do
  describe 'Validations' do

    it 'should have the same password and password_confirmation' do
      User.new(
        name: 'tony',
        email: 'anthony.langford@gmail.com',
        password: 'secret',
        password_confirmation: 'secret2'
      ).should_not be_valid
    end

    it 'should have a unique email insensitive of case' do
      User.create(
        name: 'tony',
        email: 'anthony.LANGFORD@gmail.com',
        password: 'secret',
        password_confirmation: 'secret'
      )
      byebug
      User.new(
        name: 'tony',
        email: 'anthony.langford@gmail.com',
        password: 'secret',
        password_confirmation: 'secret'
      ).should_not be_valid
    end

    it 'should have an email' do
      User.new(name: 'tony',
        email: nil,
        password: 'secret',
        password_confirmation: 'secret'
      ).should_not be_valid
    end

    it 'should have a name' do
      User.new(name: nil,
        email: 'anthony.langford@gmail.com',
        password: 'secret',
        password_confirmation: 'secret'
      ).should_not be_valid
    end


    it "should have a password.length > 6" do
      User.new(name: 'tony',
        email: 'anthony.langford@gmail.com',
        password: 'short',
        password_confirmation: 'short'
      ).should_not be_valid
    end

  end
end