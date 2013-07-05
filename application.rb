require 'sinatra/base'
require 'data_mapper'

class UserLogin < Sinatra::Base

  get '/' do
    'Hello, World'
    erb :home
  end

end