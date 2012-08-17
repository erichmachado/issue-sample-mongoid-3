require 'spec_helper'

describe Owner do

  class OwnerClass
    include Mongoid::Document
    include Owner
  end

  subject { OwnerClass.new }

  context 'Associations' do
    it { should have_many(:permissions).with_dependent(:destroy) }
    it { should have_many(:owner_resources) }
  end

end
