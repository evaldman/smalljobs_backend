class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :length, :pay, :date, :accept_status, :completed
  has_one :user
end
