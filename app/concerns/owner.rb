require 'active_support/concern'

module Owner
  extend ActiveSupport::Concern

  included do
    has_many :permissions, :as => :owner, :dependent => :destroy
    has_many :owner_resources, :as => :owner, :class_name => 'SharedResource'
  end

end