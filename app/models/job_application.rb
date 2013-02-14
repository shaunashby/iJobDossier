class JobApplication < ActiveRecord::Base
  has_one :application_target
  belongs_to :job_application_pool
end
