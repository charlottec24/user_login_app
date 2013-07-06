require 'sinatra/base'
require 'data_mapper'

require_relative './lib/user'
require_relative './lib/dm-setup'

class UserLogin < Sinatra::Base

  get '/' do
    'Hello, World'
    erb :home
  end

  post '/signup' do
    User.create_user(params[:user_name], params[:email], params[:password])
    redirect '/'
  end

end