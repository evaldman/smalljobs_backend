class User < ApplicationRecord
    has_secure_password
    has_many :jobs
    has_many :accepted_jobs
    validates :username, uniqueness: {case_sensitive: false}
    validates :username, presence: true
    validates :name, presence: true
    validates :purpose, presence: true

    def accepted
        self.accepted_jobs.map{|accepted| accepted.job}.flatten
    end
end
