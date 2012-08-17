class SharedResource
  include Mongoid::Document

  belongs_to :owner, :polymorphic => true
  belongs_to :collaborator, :polymorphic => true

  validates :owner, :collaborator, :presence => true

end
