class Show < ActiveRecord::Base
  has_many :binges
  has_many :users, through: :binges

  validates_presence_of :name, :description, :media_type, :category
end
