class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :bio, :image, :purpose, :accepted_jobs
  # has_many :accepted_jobs
end
