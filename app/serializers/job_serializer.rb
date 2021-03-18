class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :length, :pay, :skills_req, :status, :completed
  has_one :user
end
