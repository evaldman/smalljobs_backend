class Job < ApplicationRecord
  belongs_to :user
  has_many :accepted_jobs, dependent: :destroy
  has_many :job_categories, dependent: :destroy
  has_many :categories, through: :job_categories
end
