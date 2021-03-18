class Job < ApplicationRecord
  belongs_to :user
  has_many :accepted_jobs
  has_many :job_categories
  has_many :categories, through: :job_categories
end
