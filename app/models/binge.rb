class Binge < ActiveRecord::Base
  belongs_to :show
  belongs_to :user

  validates_presence_of :start, :finish
end
