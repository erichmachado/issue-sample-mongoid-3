require 'spec_helper'

describe SharedResource do
  it { should be_a_kind_of(Mongoid::Document) }

  context 'Associations' do
    it { should belong_to(:owner) }
    it { should belong_to(:collaborator) }
  end

  context 'Validations' do
    it { should validate_presence_of(:owner) }
    it { should validate_presence_of(:collaborator) }
  end

  describe 'Expected behavior' do
    subject { Fabricate(:shared_resource) }

    it "binds #{described_class} to Owner" do
      subject.owner.should be_an(Owner)
    end

    it "binds Owner to #{described_class}" do
      subject.owner.owner_resources.should include(subject)
    end

    it "binds #{described_class} to Collaborator" do
      subject.collaborator.should be_a(Collaborator)
    end

    it "binds Collaborator to #{described_class}" do
      subject.collaborator.collaborator_resources.should include(subject)
    end
  end

end
