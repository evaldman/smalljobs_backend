class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :bio, :image, :purpose, :accepted_jobs, :accepted, :posted
  # has_many :accepted_jobs
end