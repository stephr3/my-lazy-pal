require 'rails_helper'

describe Show do
  it { should have_many :binges }
  it { should have_many :users }
end
