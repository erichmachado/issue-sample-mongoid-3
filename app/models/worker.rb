# Workers can act as resource collaborators
class Worker
  include Mongoid::Document
  include Collaborator

end