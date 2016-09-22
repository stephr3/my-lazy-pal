
class User < ActiveRecord::Base
  has_many :binges
  has_many :shows, through: :binges

  attr_accessor :password
  validates :username, :password, presence: true, on: :create
  validates :password, length: { minimum: 4 }, on: :create
  before_save :encrypt_password

  def encrypt_password
   self.salt = BCrypt::Engine.generate_salt
   self.password_hash = BCrypt::Engine.hash_secret(password, salt)
  end

  def self.authenticate(username, password)
   user = User.where(username: username).first
   if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.salt)
     user
   else
     nil
   end
  end


end
