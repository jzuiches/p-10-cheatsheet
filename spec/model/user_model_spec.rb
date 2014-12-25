require_relative '../spec_helper'

describe 'User Model' do
  describe 'the user model exists' do
    expect(user).to be_valid
  end

  describe '#new method' do
    describe 'returns a user object' do
      expect(user).to be_an_instance_of User
    end
  end
  describe "new user username" do
    it 'should have a username' do
      u = User.create(:username => "joe")
      expect(u.username).to eq("joe")
    end
  end
  describe 'new user email' do
    it 'should have a valid email' do
      u = User.create(:email => "dasfdasf@gmail.com")
      expect(u.email)to be_valid
    end
  end
  describe ''
end