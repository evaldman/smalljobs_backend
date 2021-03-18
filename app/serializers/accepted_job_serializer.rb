class AcceptedJobSerializer < ActiveModel::Serializer
  attributes :id, :completed, :expected_pay
  has_one :job
  has_one :user
end
