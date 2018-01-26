require "granite_orm/adapter/pg"

class User < Granite::ORM::Base
  adapter pg


  # id : Int64 primary key is created for you
  field email : String
  field encrypted_password : String
  timestamps
end
