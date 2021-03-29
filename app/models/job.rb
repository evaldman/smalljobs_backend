class Job < ApplicationRecord
  belongs_to :user
  has_many :accepted_jobs, dependent: :destroy
  has_many :job_categories, dependent: :destroy
  has_many :categories, through: :job_categories

  def job_category
    cat = self.categories.map{|category| category.id}
      cat[0]
  end
end
