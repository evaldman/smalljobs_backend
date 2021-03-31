class User < ApplicationRecord
    has_secure_password
    has_many :jobs, dependent: :destroy
    has_many :accepted_jobs, dependent: :destroy
    validates :username, uniqueness: {case_sensitive: false}
    validates :username, presence: true
    validates :name, presence: true
    validates :purpose, presence: true
    # validates_uniqueness_of :job, scope: :date

    def accepted
        self.accepted_jobs.map{|accepted| accepted.job}.flatten
    end

    def posted
        self.jobs
    end
    
end
