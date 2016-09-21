require 'rails_helper'

describe Binge do
  it { should belong_to :show }
  it { should belong_to :user }
end
