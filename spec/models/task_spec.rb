require 'spec_helper'

describe Task do
  it { should be_a_kind_of(Mongoid::Document) }

  context 'Associations' do
    it { should belong_to(:collaborator) }
  end

  context 'Validations' do
    it { should validate_presence_of(:collaborator) }
  end

  describe 'Expected behavior' do
    subject { Fabricate(:task) }

    it "binds #{described_class} to Collaborator" do
      subject.collaborator.should be_a(Collaborator)
    end
  end

end