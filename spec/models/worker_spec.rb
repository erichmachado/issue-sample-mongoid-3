require 'spec_helper'

describe Worker do
  it { should be_a_kind_of(Mongoid::Document) }
  it { should be_a_kind_of(Collaborator) }

end