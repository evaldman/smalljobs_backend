class AcceptedJobSerializer < ActiveModel::Serializer
  attributes :id, :completed, :job, :user
  has_one :job
  has_one :user
end
