require 'dm-core'
require 'dm-migrations'


class User
  include DataMapper::Resource

  property :id,         Serial    # An auto-increment integer key
  property :user_name,  String
  property :email,      String   
  property :password,   String

  def self.create_user(user_name, email, password)
    User.create!({ :user_name => user_name,
                        :email => email,
                        :password => password
                  })
  end  

end