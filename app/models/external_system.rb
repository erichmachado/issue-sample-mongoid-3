# External systems can act as resource owners
class ExternalSystem
  include Mongoid::Document
  include Owner

end