class Task
  include Mongoid::Document

  belongs_to :collaborator, :polymorphic => true

  validates :collaborator, :presence => true

end