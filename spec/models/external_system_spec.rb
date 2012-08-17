require 'spec_helper'

describe ExternalSystem do
  it { should be_a_kind_of(Mongoid::Document) }
  it { should be_a_kind_of(Owner) }

end