DataMapper::Logger.new($stdout, :debug)

DataMapper.setup(:default, "postgres://localhost/user_login_app")
DataMapper.finalize
DataMapper.auto_upgrade!