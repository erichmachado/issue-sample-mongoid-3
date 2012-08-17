require 'spec_helper'

describe User do
  it { should be_a_kind_of(Mongoid::Document) }
  it { should be_a_kind_of(Owner) }
  it { should be_a_kind_of(Collaborator) }

end
