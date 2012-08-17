class Permission
  include Mongoid::Document

  belongs_to :owner, :polymorphic => true

  validates :owner, :presence => true

end
