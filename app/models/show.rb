class Show < ActiveRecord::Base
  has_many :binges
  has_many :users, through: :binges

end
