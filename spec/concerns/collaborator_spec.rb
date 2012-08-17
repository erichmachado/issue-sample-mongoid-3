require 'spec_helper'

describe Collaborator do

  class CollaboratorClass
    include Mongoid::Document
    include Collaborator
  end

  subject { CollaboratorClass.new }

  context 'Associations' do
    it { should have_many(:tasks).with_dependent(:destroy) }
    it { should have_many(:collaborator_resources) }
  end

end
