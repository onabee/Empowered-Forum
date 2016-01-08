class User < ActiveRecord::Base
  has_secure_password :true
  has_many :categories
  has_many :posts
  has_many :comments
  
end

