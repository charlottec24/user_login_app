require File.expand_path('../../spec_helper', __FILE__)
require_relative '../../lib/user'

describe 'home page', :type => :feature do

  it 'shows the main page works' do
    visit "/"
    page.should have_content('Signup')
  end

  it 'can create the user' do
    user = User.new({:user_name => "", :email => "", :password => ""})
    user.save!
      # User.new
      # user = User.create_user("CharlotteC", "charlottemidgley@gmail.com", "char")
      # user.saved?
    end

end