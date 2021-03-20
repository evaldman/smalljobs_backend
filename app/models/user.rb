class User < ApplicationRecord
    has_secure_password
    has_many :jobs
    has_many :accepted_jobs
    validates :username, uniqueness: {case_sensitive: false}

    def accepted
        self.accepted_jobs.map{|accepted| accepted.job}.flatten
    end
end
