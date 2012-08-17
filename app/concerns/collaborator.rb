require 'active_support/concern'

module Collaborator
  extend ActiveSupport::Concern

  included do
    has_many :tasks, :as => :collaborator, :dependent => :destroy
    has_many :collaborator_resources, :as => :collaborator, :class_name => 'SharedResource'
  end

end