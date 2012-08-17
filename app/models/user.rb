# Users can act both as resource owners and resource collaborators
class User
  include Mongoid::Document
  include Owner
  include Collaborator

end