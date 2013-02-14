class JobApplicationPool < ActiveRecord::Base
  has_many :job_applications
  attr_accessible :id, :user
end
