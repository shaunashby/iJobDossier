class JobApplicationPool < ActiveRecord::Base
  attr_accessible :user

  has_many :job_applications

  validates :user, presence: true, unique: true
end
