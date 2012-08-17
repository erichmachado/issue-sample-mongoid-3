Fabricator(:owner, :from => [ User, ExternalSystem ].sample)

Fabricator(:collaborator, :from => [ User, Worker ].sample)

Fabricator(:task) do
  collaborator
end

Fabricator(:permission) do
  owner
end

Fabricator(:shared_resource) do
  owner
  collaborator
end
