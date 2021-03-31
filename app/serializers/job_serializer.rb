class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :length, :pay, :date, :accept_status, :completed, :job_category, :time, :address
  has_one :user
end
