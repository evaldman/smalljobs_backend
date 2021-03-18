class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password_digest, :bio, :image, :type, :accepted_jobs
  has_many :accepted_jobs
end
