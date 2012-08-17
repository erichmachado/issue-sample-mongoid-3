require 'spec_helper'

describe Permission do
  it { should be_a_kind_of(Mongoid::Document) }

  context 'Associations' do
    it { should belong_to(:owner) }
  end

  context 'Validations' do
    it { should validate_presence_of(:owner) }
  end

  describe 'Expected behavior' do
    subject { Fabricate(:permission) }

    it "binds #{described_class} to Owner" do
      subject.owner.should be_an(Owner)
    end
  end

end
